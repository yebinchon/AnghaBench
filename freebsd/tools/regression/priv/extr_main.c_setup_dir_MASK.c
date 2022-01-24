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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void
FUNC5(const char *test, char *dpathp, uid_t uid, gid_t gid, mode_t mode)
{

	FUNC4(dpathp, "/tmp/priv.XXXXXXXXXXX");
	if (FUNC3(dpathp) == NULL)
		FUNC2(-1, "test %s: mkdtemp", test);

	if (FUNC1(dpathp, uid, gid) < 0)
		FUNC2(-1, "test %s: chown(%s, %d, %d)", test, dpathp, uid,
		    gid);

	if (FUNC0(dpathp, mode) < 0)
		FUNC2(-1, "test %s: chmod(%s, 0%o)", test, dpathp, mode);
}