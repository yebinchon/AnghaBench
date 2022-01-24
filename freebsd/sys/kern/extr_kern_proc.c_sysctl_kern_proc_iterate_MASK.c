#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct sysctl_req {int dummy; } ;
struct proc {int p_flag; TYPE_2__* p_ucred; TYPE_3__* p_session; TYPE_1__* p_pgrp; } ;
struct kern_proc_out_args {int* name; int oid_number; int flags; struct sysctl_req* req; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_7__ {int /*<<< orphan*/ * s_ttyp; int /*<<< orphan*/  s_sid; } ;
struct TYPE_6__ {int /*<<< orphan*/  cr_ruid; int /*<<< orphan*/  cr_uid; int /*<<< orphan*/  cr_rgid; int /*<<< orphan*/  cr_gid; } ;
struct TYPE_5__ {int /*<<< orphan*/  pg_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  KERN_PROC_GID 135 
#define  KERN_PROC_PGRP 134 
#define  KERN_PROC_PROC 133 
#define  KERN_PROC_RGID 132 
#define  KERN_PROC_RUID 131 
#define  KERN_PROC_SESSION 130 
#define  KERN_PROC_TTY 129 
#define  KERN_PROC_UID 128 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int P_CONTROLT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  curthread ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct proc*) ; 
 int FUNC7 (struct proc*,struct sysctl_req*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct proc *p, void *origarg)
{
	struct kern_proc_out_args *arg = origarg;
	int *name = arg->name;
	int oid_number = arg->oid_number;
	int flags = arg->flags;
	struct sysctl_req *req = arg->req;
	int error = 0;

	FUNC1(p);

	FUNC0(p->p_ucred != NULL,
	    ("process credential is NULL for non-NEW proc"));
	/*
	 * Show a user only appropriate processes.
	 */
	if (FUNC6(curthread, p))
		goto skip;
	/*
	 * TODO - make more efficient (see notes below).
	 * do by session.
	 */
	switch (oid_number) {

	case KERN_PROC_GID:
		if (p->p_ucred->cr_gid != (gid_t)name[0])
			goto skip;
		break;

	case KERN_PROC_PGRP:
		/* could do this by traversing pgrp */
		if (p->p_pgrp == NULL ||
		    p->p_pgrp->pg_id != (pid_t)name[0])
			goto skip;
		break;

	case KERN_PROC_RGID:
		if (p->p_ucred->cr_rgid != (gid_t)name[0])
			goto skip;
		break;

	case KERN_PROC_SESSION:
		if (p->p_session == NULL ||
		    p->p_session->s_sid != (pid_t)name[0])
			goto skip;
		break;

	case KERN_PROC_TTY:
		if ((p->p_flag & P_CONTROLT) == 0 ||
		    p->p_session == NULL)
			goto skip;
		/* XXX proctree_lock */
		FUNC4(p->p_session);
		if (p->p_session->s_ttyp == NULL ||
		    FUNC8(p->p_session->s_ttyp) !=
		    (dev_t)name[0]) {
			FUNC5(p->p_session);
			goto skip;
		}
		FUNC5(p->p_session);
		break;

	case KERN_PROC_UID:
		if (p->p_ucred->cr_uid != (uid_t)name[0])
			goto skip;
		break;

	case KERN_PROC_RUID:
		if (p->p_ucred->cr_ruid != (uid_t)name[0])
			goto skip;
		break;

	case KERN_PROC_PROC:
		break;

	default:
		break;

	}
	error = FUNC7(p, req, flags);
	FUNC2(p, MA_NOTOWNED);
	return (error);
skip:
	FUNC3(p);
	return (0);
}