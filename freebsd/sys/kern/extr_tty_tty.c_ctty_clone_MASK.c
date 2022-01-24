#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct proc {int p_flag; TYPE_2__* p_session; } ;
struct cdev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_ttyvp; } ;
struct TYPE_3__ {scalar_t__ v_type; struct cdev* v_rdev; } ;

/* Variables and functions */
 int P_CONTROLT ; 
 scalar_t__ VBAD ; 
 int /*<<< orphan*/  clone_drain_lock ; 
 struct cdev* ctty ; 
 struct proc* curproc ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  proctree_lock ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *arg, struct ucred *cred, char *name, int namelen,
    struct cdev **dev)
{
	struct proc *p;

	if (*dev != NULL)
		return;
	if (FUNC3(name, "tty"))
		return;
	p = curproc;
	FUNC5(&clone_drain_lock);
	FUNC4(&proctree_lock);
	FUNC4(&clone_drain_lock);
	FUNC0();
	if (!(p->p_flag & P_CONTROLT))
		*dev = ctty;
	else if (p->p_session->s_ttyvp == NULL)
		*dev = ctty;
	else if (p->p_session->s_ttyvp->v_type == VBAD ||
	    p->p_session->s_ttyvp->v_rdev == NULL) {
		/* e.g. s_ttyvp was revoked */
		*dev = ctty;
	} else
		*dev = p->p_session->s_ttyvp->v_rdev;
	FUNC1(*dev);
	FUNC2();
	FUNC5(&proctree_lock);
}