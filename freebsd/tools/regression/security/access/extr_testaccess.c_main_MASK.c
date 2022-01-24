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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  ROOT_UID ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  TEST_GID_ONE ; 
 int /*<<< orphan*/  TEST_GID_TWO ; 
 int /*<<< orphan*/  TEST_UID_ONE ; 
 int /*<<< orphan*/  TEST_UID_TWO ; 
 int /*<<< orphan*/  WHEEL_GID ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC12(int argc, char *argv[])
{
	int error, errorseen;

	if (FUNC5() != 0) {
		FUNC4(stderr, "testaccess must run as root.\n");
		FUNC3 (EXIT_FAILURE);
	}

	error = FUNC11();
	if (error) {
		FUNC1();
		FUNC3 (EXIT_FAILURE);
	}

	/* Make sure saved uid is set appropriately. */
	error = FUNC10(ROOT_UID, ROOT_UID, ROOT_UID);
	if (error) {
		FUNC6("setresuid");
		FUNC1();
	}

	/* Clear out additional groups. */
	error = FUNC8(0, NULL);
	if (error) {
		FUNC6("setgroups");
		FUNC1();
	}

	/* Make sure saved gid is set appropriately. */
	error = FUNC9(WHEEL_GID, WHEEL_GID, WHEEL_GID);
	if (error) {
		FUNC6("setresgid");
		FUNC1();
	}

	/*
	 * UID-only tests.
	 */

	/* Check that saved uid is not used */
	error = FUNC10(TEST_UID_ONE, TEST_UID_ONE, ROOT_UID);
	if (error) {
		FUNC6("setresuid.1");
		FUNC1();
		FUNC3 (EXIT_FAILURE);
	}

	errorseen = 0;

	error = FUNC0("test1", R_OK);
	if (!error) {
		FUNC4(stderr, "saved uid used instead of real uid\n");
		errorseen++;
	}

#ifdef EACCESS_AVAILABLE
	error = eaccess("test1", R_OK);
	if (!error) {
		fprintf(stderr, "saved uid used instead of effective uid\n");
		errorseen++;
	}
#endif

	error = FUNC7();
	if (error) {
		FUNC6("restoreprivilege");
		FUNC1();
		FUNC3 (EXIT_FAILURE);
	}

	error = FUNC10(TEST_UID_ONE, TEST_UID_TWO, ROOT_UID);
	if (error) {
		FUNC6("setresid.2");
		FUNC1();
		FUNC3 (EXIT_FAILURE);
	}

	/* Check that the real uid is used, not the effective uid */
	error = FUNC0("test2", R_OK);
	if (error) {
		FUNC4(stderr, "Effective uid was used instead of real uid in access().\n");
		errorseen++;
	}

#ifdef EACCESS_AVAILABLE
	/* Check that the effective uid is used, not the real uid */
	error = eaccess("test3", R_OK);
	if (error) {
		fprintf(stderr, "Real uid was used instead of effective uid in eaccess().\n");
		errorseen++;
	}
#endif

	/* Check that the real uid is used, not the effective uid */
	error = FUNC0("test3", R_OK);
	if (!error) {
		FUNC4(stderr, "Effective uid was used instead of real uid in access().\n");
		errorseen++;
	}

#ifdef EACCESS_AVAILABLE
	/* Check that the effective uid is used, not the real uid */
	error = eaccess("test2", R_OK);
	if (!error) {
		fprintf(stderr, "Real uid was used instead of effective uid in eaccess().\n");
		errorseen++;
	}
#endif

	error = FUNC7();
	if (error) {
		FUNC6("restoreprivilege");
		FUNC1();
		FUNC3 (EXIT_FAILURE);
	}

	error = FUNC9(TEST_GID_ONE, TEST_GID_TWO, WHEEL_GID);
	if (error) {
		FUNC6("setresgid.1");
		FUNC1();
		FUNC3 (EXIT_FAILURE);
	}

	/* Set non-root effective uid to avoid excess privilege. */
	error = FUNC10(TEST_UID_ONE, TEST_UID_ONE, ROOT_UID);
	if (error) {
		FUNC6("setresuid.3");
		FUNC1();
		FUNC3 (EXIT_FAILURE);
	}

	/* Check that the saved gid is not used */
	error = FUNC0("test4", R_OK);
	if (!error) {
		FUNC4(stderr, "saved gid used instead of real gid\n");
	}

#ifdef EACCESS_AVAILABLE
	error = eaccess("test4", R_OK);
	if (!error) {
		fprintf(stderr, "saved gid used instead of effective gid\n");
		errorseen++;
	}
#endif

	/* Check that the real gid is used, not the effective gid */
	error = FUNC0("test5", R_OK);
	if (error) {
		FUNC4(stderr, "Effective gid was used instead of real gid in access().\n");
		errorseen++;
	}

#ifdef EACCESS_AVAILABLE
	/* Check that the effective gid is used, not the real gid */
	error = eaccess("test6", R_OK);
	if (error) {
		fprintf(stderr, "Real gid was used instead of effective gid in eaccess().\n");
		errorseen++;
	}
#endif

	/* Check that the real gid is used, not the effective gid */
	error = FUNC0("test6", R_OK);
	if (!error) {
		FUNC4(stderr, "Effective gid was used instead of real gid in access().\n");
		errorseen++;
	}

#ifdef EACCESS_AVAILABLE
	/* Check that the effective gid is used, not the real gid */
	error = eaccess("test5", R_OK);
	if (!error) {
		fprintf(stderr, "Real gid was used instead of effective gid in eaccess().\n");
		errorseen++;
	}
#endif

	FUNC4(stderr, "%d errors seen.\n", errorseen);

	/*
	 * All tests done, restore and clean up
	 */

	error = FUNC1();
	if (error) {
		FUNC6("cleanup");
		FUNC3 (EXIT_FAILURE);
	}

	FUNC3 (EXIT_SUCCESS);
}