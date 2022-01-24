#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bundle_header {int dummy; } ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_2__ {int /*<<< orphan*/  have_repository; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  builtin_bundle_usage ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (struct bundle_header*,int,char const**) ; 
 int /*<<< orphan*/  FUNC6 (struct bundle_header*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char const*,char const*) ; 
 int FUNC8 (char const*,struct bundle_header*) ; 
 TYPE_1__* startup_info ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct bundle_header*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct bundle_header*,int) ; 

int FUNC13(int argc, const char **argv, const char *prefix)
{
	struct bundle_header header;
	const char *cmd, *bundle_file;
	int bundle_fd = -1;

	if (argc < 3)
		FUNC11(builtin_bundle_usage);

	cmd = argv[1];
	bundle_file = FUNC7(prefix, argv[2]);
	argc -= 2;
	argv += 2;

	FUNC6(&header, 0, sizeof(header));
	if (FUNC9(cmd, "create") && (bundle_fd =
				FUNC8(bundle_file, &header)) < 0)
		return 1;

	if (!FUNC9(cmd, "verify")) {
		FUNC1(bundle_fd);
		if (argc != 1) {
			FUNC11(builtin_bundle_usage);
			return 1;
		}
		if (FUNC12(the_repository, &header, 1))
			return 1;
		FUNC4(stderr, FUNC0("%s is okay\n"), bundle_file);
		return 0;
	}
	if (!FUNC9(cmd, "list-heads")) {
		FUNC1(bundle_fd);
		return !!FUNC5(&header, argc, argv);
	}
	if (!FUNC9(cmd, "create")) {
		if (argc < 2) {
			FUNC11(builtin_bundle_usage);
			return 1;
		}
		if (!startup_info->have_repository)
			FUNC3(FUNC0("Need a repository to create a bundle."));
		return !!FUNC2(the_repository, bundle_file, argc, argv);
	} else if (!FUNC9(cmd, "unbundle")) {
		if (!startup_info->have_repository)
			FUNC3(FUNC0("Need a repository to unbundle."));
		return !!FUNC10(the_repository, &header, bundle_fd, 0) ||
			FUNC5(&header, argc, argv);
	} else
		FUNC11(builtin_bundle_usage);
}