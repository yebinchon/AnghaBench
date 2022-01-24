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
struct thread {struct proc* td_proc; int /*<<< orphan*/  td_ucred; } ;
struct proc {int p_flag; TYPE_1__* p_session; } ;
struct devfs_dirent {struct cdev_priv* de_cdp; } ;
struct TYPE_4__ {struct ucred* si_cred; } ;
struct cdev_priv {TYPE_2__ cdp_c; } ;
struct TYPE_3__ {struct cdev_priv* s_ttydp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int P_CONTROLT ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ucred*) ; 

__attribute__((used)) static inline int
FUNC3(struct devfs_dirent *de, struct thread *td)
{
	struct cdev_priv *cdp;
	struct ucred *dcr;
	struct proc *p;
	int error;

	cdp = de->de_cdp;
	if (cdp == NULL)
		return (0);
	dcr = cdp->cdp_c.si_cred;
	if (dcr == NULL)
		return (0);

	error = FUNC2(td->td_ucred, dcr);
	if (error == 0)
		return (0);
	/* We do, however, allow access to the controlling terminal */
	p = td->td_proc;
	FUNC0(p);
	if (!(p->p_flag & P_CONTROLT)) {
		FUNC1(p);
		return (error);
	}
	if (p->p_session->s_ttydp == cdp)
		error = 0;
	FUNC1(p);
	return (error);
}