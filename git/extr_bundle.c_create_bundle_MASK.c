#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rev_info {int /*<<< orphan*/  pending; } ;
struct repository {int dummy; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  bundle_signature ; 
 scalar_t__ FUNC1 (struct lock_file*) ; 
 scalar_t__ FUNC2 (int,struct rev_info*,int,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (struct lock_file*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct repository*,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct lock_file*) ; 
 scalar_t__ save_commit_buffer ; 
 int FUNC10 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,struct rev_info*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,struct rev_info*) ; 

int FUNC16(struct repository *r, const char *path,
		  int argc, const char **argv)
{
	struct lock_file lock = LOCK_INIT;
	int bundle_fd = -1;
	int bundle_to_stdout;
	int ref_count = 0;
	struct rev_info revs;

	bundle_to_stdout = !FUNC11(path, "-");
	if (bundle_to_stdout)
		bundle_fd = 1;
	else
		bundle_fd = FUNC6(&lock, path,
						      LOCK_DIE_ON_ERROR);

	/* write signature */
	FUNC14(bundle_fd, bundle_signature, FUNC12(bundle_signature));

	/* init revs to list objects for pack-objects later */
	save_commit_buffer = 0;
	FUNC8(r, &revs, NULL);

	/* write prerequisites */
	if (FUNC2(bundle_fd, &revs, argc, argv))
		goto err;

	argc = FUNC10(argc, argv, &revs, NULL);

	if (argc > 1) {
		FUNC5(FUNC0("unrecognized argument: %s"), argv[1]);
		goto err;
	}

	FUNC7(&revs.pending);

	ref_count = FUNC13(bundle_fd, &revs);
	if (!ref_count)
		FUNC3(FUNC0("Refusing to create empty bundle."));
	else if (ref_count < 0)
		goto err;

	/* write pack */
	if (FUNC15(bundle_fd, &revs))
		goto err;

	if (!bundle_to_stdout) {
		if (FUNC1(&lock))
			FUNC4(FUNC0("cannot create '%s'"), path);
	}
	return 0;
err:
	FUNC9(&lock);
	return -1;
}