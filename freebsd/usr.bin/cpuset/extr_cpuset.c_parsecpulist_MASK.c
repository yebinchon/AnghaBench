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
struct bitset {int dummy; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_LEVEL_ROOT ; 
 int /*<<< orphan*/  CPU_SETSIZE ; 
 int /*<<< orphan*/  CPU_WHICH_PID ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct bitset*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static void
FUNC4(char *list, cpuset_t *mask)
{

	if (FUNC3(list, "all") == 0) {
		if (FUNC0(CPU_LEVEL_ROOT, CPU_WHICH_PID, -1,
		    sizeof(*mask), mask) != 0)
			FUNC1(EXIT_FAILURE, "getaffinity");
		return;
	}
	FUNC2(list, (struct bitset *)mask, CPU_SETSIZE);
}