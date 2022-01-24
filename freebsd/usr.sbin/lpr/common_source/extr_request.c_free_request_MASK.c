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
struct request {int /*<<< orphan*/  jobids; int /*<<< orphan*/  users; struct req_user* authinfo; struct req_user* prettyname; struct req_user* authname; struct req_user* logname; } ;
struct req_user {int dummy; } ;
typedef  struct req_user req_jobid ;

/* Variables and functions */
 struct req_user* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct req_user*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct req_user*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  rj_link ; 
 int /*<<< orphan*/  ru_link ; 

void
FUNC4(struct request *rp)
{
	struct req_user *ru;
	struct req_jobid *rj;

	if (rp->logname)
		FUNC2(rp->logname);
	if (rp->authname)
		FUNC2(rp->authname);
	if (rp->prettyname)
		FUNC2(rp->prettyname);
	if (rp->authinfo)
		FUNC2(rp->authinfo);
	while ((ru = FUNC0(&rp->users)) != NULL) {
		FUNC1(&rp->users, ru, ru_link);
		FUNC2(ru);
	}
	while ((rj = FUNC0(&rp->jobids)) != NULL) {
		FUNC1(&rp->jobids, rj, rj_link);
		FUNC2(rj);
	}
	FUNC3(rp);
}