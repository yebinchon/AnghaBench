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
struct pmclog_userdata {int dummy; } ;
struct pmc_owner {int dummy; } ;
struct pmc_op_writelog {int /*<<< orphan*/  pm_userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc_owner*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pmc_owner*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USERDATA ; 
 int /*<<< orphan*/  WRI ; 

int
FUNC4(struct pmc_owner *po, struct pmc_op_writelog *wl)
{
	int error;

	FUNC0(LOG,WRI,1, "writelog po=%p ud=0x%x", po, wl->pm_userdata);

	error = 0;

	FUNC3(po, USERDATA,
	    sizeof(struct pmclog_userdata));
	FUNC2(wl->pm_userdata);
	FUNC1(po);

 error:
	return (error);
}