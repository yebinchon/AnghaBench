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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4(int argc, char *argv[])
{
	int error;

	FUNC1(stderr, "test capabilities: ");
#ifdef SETSUGID_SUPPORTED
	fprintf(stderr, "[SETSUGID_SUPPORTED] ");
#endif
#ifdef SETSUGID_SUPPORTED_BUT_NO_LIBC_STUB
	fprintf(stderr, "[SETSUGID_SUPPORTED_BUT_NO_LIBC_STUB] ");
#endif
#ifdef CHECK_CRED_SET
	fprintf(stderr, "[CHECK_CRED_SET] ");
#endif
	FUNC1(stderr, "\n");

	error = FUNC3(1);
	if (error) {
		FUNC2("setugid");
		FUNC1(stderr,
		    "This test suite requires options REGRESSION\n");
		return (-1);
	}

	FUNC0();

	return (0);
}