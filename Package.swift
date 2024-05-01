// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DiffMatchPatch",
	platforms: [
		.macOS(.v10_15)
	],
	products: [
		.library(
			name: "diff_match_patch",
			type: .static,
			targets: [
				"DiffMatchPatch"
			]
		)
	],
	targets: [
		.target(
			name: "diff_match_patch"
		),
		.target(
			name: "DiffMatchPatch",
			dependencies: [
				"diff_match_patch"
			],
			cSettings: [
				.headerSearchPath("../diff_match_path/include")
			]
		)
	]
)
