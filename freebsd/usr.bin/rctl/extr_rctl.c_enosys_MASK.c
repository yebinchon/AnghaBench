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
typedef  int /*<<< orphan*/  racct_enable ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	size_t racct_enable_len;
	int error;
	bool racct_enable;

	racct_enable_len = sizeof(racct_enable);
	error = FUNC2("kern.racct.enable",
	    &racct_enable, &racct_enable_len, NULL, 0);

	if (error != 0) {
		if (errno == ENOENT)
			FUNC1(1, "RACCT/RCTL support not present in kernel; see rctl(8) for details");

		FUNC0(1, "sysctlbyname");
	}

	if (!racct_enable)
		FUNC1(1, "RACCT/RCTL present, but disabled; enable using kern.racct.enable=1 tunable");
}