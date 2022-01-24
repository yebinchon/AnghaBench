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
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEST_PATH_LEN ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int test_path_idx ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(char *path)
{
	FUNC3(path, TEST_PATH_LEN, "%s/tmp.XXXXXX%d",
	    FUNC1("TMPDIR") == NULL ? "/tmp" : FUNC1("TMPDIR"),
	    test_path_idx);

	test_path_idx++;

	FUNC0(FUNC2(path) != -1,
	    "mkstemp failed; errno=%d", errno);
	FUNC0(FUNC4(path) == 0,
	    "unlink failed; errno=%d", errno);
}