#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat_data {int dummy; } ;
struct stat {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct stat_data*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (struct stat_data*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__ mtime_dir ; 
 int /*<<< orphan*/  remove_test_directory ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,int) ; 
 char* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (struct stat*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static int FUNC22(void)
{
	struct stat st;
	struct stat_data base;
	int fd, ret = 0;
	char *cwd;

	FUNC14(&mtime_dir, "mtime-test-XXXXXX");
	if (!FUNC12(mtime_dir.buf))
		FUNC5("Could not make temporary directory");

	cwd = FUNC17();
	FUNC7(stderr, FUNC0("Testing mtime in '%s' "), cwd);
	FUNC10(cwd);

	FUNC1(remove_test_directory);
	FUNC20(&st);
	FUNC6(&base, &st);
	FUNC9('.', stderr);

	FUNC2();
	fd = FUNC4("newfile");
	FUNC20(&st);
	if (!FUNC11(&base, &st)) {
		FUNC3(fd);
		FUNC9('\n', stderr);
		FUNC8(stderr,FUNC0("directory stat info does not "
				    "change after adding a new file"));
		goto done;
	}
	FUNC6(&base, &st);
	FUNC9('.', stderr);

	FUNC2();
	FUNC18("new-dir");
	FUNC20(&st);
	if (!FUNC11(&base, &st)) {
		FUNC3(fd);
		FUNC9('\n', stderr);
		FUNC8(stderr, FUNC0("directory stat info does not change "
				     "after adding a new directory"));
		goto done;
	}
	FUNC6(&base, &st);
	FUNC9('.', stderr);

	FUNC2();
	FUNC16(fd, "data", 4);
	FUNC3(fd);
	FUNC20(&st);
	if (FUNC11(&base, &st)) {
		FUNC9('\n', stderr);
		FUNC8(stderr, FUNC0("directory stat info changes "
				     "after updating a file"));
		goto done;
	}
	FUNC9('.', stderr);

	FUNC2();
	FUNC3(FUNC4("new-dir/new"));
	FUNC20(&st);
	if (FUNC11(&base, &st)) {
		FUNC9('\n', stderr);
		FUNC8(stderr, FUNC0("directory stat info changes after "
				     "adding a file inside subdirectory"));
		goto done;
	}
	FUNC9('.', stderr);

	FUNC2();
	FUNC21("newfile");
	FUNC20(&st);
	if (!FUNC11(&base, &st)) {
		FUNC9('\n', stderr);
		FUNC8(stderr, FUNC0("directory stat info does not "
				     "change after deleting a file"));
		goto done;
	}
	FUNC6(&base, &st);
	FUNC9('.', stderr);

	FUNC2();
	FUNC21("new-dir/new");
	FUNC19("new-dir");
	FUNC20(&st);
	if (!FUNC11(&base, &st)) {
		FUNC9('\n', stderr);
		FUNC8(stderr, FUNC0("directory stat info does not "
				     "change after deleting a directory"));
		goto done;
	}

	if (FUNC13(mtime_dir.buf))
		FUNC5(FUNC0("failed to delete directory %s"), mtime_dir.buf);
	FUNC8(stderr, FUNC0(" OK"));
	ret = 1;

done:
	FUNC15(&mtime_dir);
	return ret;
}