#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct prison {int dummy; } ;
struct TYPE_4__ {scalar_t__ msg_qbytes; } ;
struct msqid_kernel {TYPE_2__* cred; TYPE_1__ u; } ;
struct TYPE_6__ {int msgmni; } ;
struct TYPE_5__ {struct prison* cr_prison; } ;

/* Variables and functions */
 TYPE_3__ msginfo ; 
 int /*<<< orphan*/  msq_mtx ; 
 int /*<<< orphan*/  FUNC0 (struct msqid_kernel*) ; 
 struct msqid_kernel* msqids ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct prison *pr)
{
	struct msqid_kernel *msqkptr;
	int i;

	/* Remove any msqs that belong to this jail. */
	FUNC1(&msq_mtx);
	for (i = 0; i < msginfo.msgmni; i++) {
		msqkptr = &msqids[i];
		if (msqkptr->u.msg_qbytes != 0 &&
		    msqkptr->cred != NULL && msqkptr->cred->cr_prison == pr)
			FUNC0(msqkptr);
	}
	FUNC2(&msq_mtx);
}