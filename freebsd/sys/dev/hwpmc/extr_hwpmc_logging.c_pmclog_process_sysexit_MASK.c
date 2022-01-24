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
struct pmclog_sysexit {int dummy; } ;
struct pmc_owner {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmc_owner*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYSEXIT ; 

void
FUNC3(struct pmc_owner *po, pid_t pid)
{
	FUNC2(po, SYSEXIT, sizeof(struct pmclog_sysexit));
	FUNC1(pid);
	FUNC0(po);
}