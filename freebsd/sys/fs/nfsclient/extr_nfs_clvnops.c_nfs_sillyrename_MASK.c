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
struct vnode {scalar_t__ v_type; } ;
struct sillyrename {int /*<<< orphan*/  s_cred; struct vnode* s_dvp; int /*<<< orphan*/  s_namlen; int /*<<< orphan*/  s_name; } ;
struct nfsnode {struct sillyrename* n_sillyrename; } ;
struct componentname {TYPE_2__* cn_thread; int /*<<< orphan*/  cn_cred; } ;
struct TYPE_4__ {TYPE_1__* td_proc; } ;
struct TYPE_3__ {short p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_NEWNFSREQ ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 struct nfsnode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sillyrename*,int /*<<< orphan*/ ) ; 
 struct sillyrename* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,struct nfsnode**) ; 
 int FUNC9 (struct vnode*,struct vnode*,struct componentname*,struct sillyrename*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,unsigned int,short) ; 
 scalar_t__ ticks ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

__attribute__((used)) static int
FUNC12(struct vnode *dvp, struct vnode *vp, struct componentname *cnp)
{
	struct sillyrename *sp;
	struct nfsnode *np;
	int error;
	short pid;
	unsigned int lticks;

	FUNC3(dvp);
	np = FUNC2(vp);
	FUNC0(vp->v_type != VDIR, ("nfs: sillyrename dir"));
	sp = FUNC7(sizeof (struct sillyrename),
	    M_NEWNFSREQ, M_WAITOK);
	sp->s_cred = FUNC5(cnp->cn_cred);
	sp->s_dvp = dvp;
	FUNC1(dvp);

	/* 
	 * Fudge together a funny name.
	 * Changing the format of the funny name to accommodate more 
	 * sillynames per directory.
	 * The name is now changed to .nfs.<ticks>.<pid>.4, where ticks is 
	 * CPU ticks since boot.
	 */
	pid = cnp->cn_thread->td_proc->p_pid;
	lticks = (unsigned int)ticks;
	for ( ; ; ) {
		sp->s_namlen = FUNC10(sp->s_name, 
				       ".nfs.%08x.%04x4.4", lticks, 
				       pid);
		if (FUNC8(dvp, sp->s_name, sp->s_namlen, sp->s_cred,
				 cnp->cn_thread, NULL))
			break;
		lticks++;
	}
	error = FUNC9(dvp, vp, cnp, sp);
	if (error)
		goto bad;
	error = FUNC8(dvp, sp->s_name, sp->s_namlen, sp->s_cred,
		cnp->cn_thread, &np);
	np->n_sillyrename = sp;
	return (0);
bad:
	FUNC11(sp->s_dvp);
	FUNC4(sp->s_cred);
	FUNC6(sp, M_NEWNFSREQ);
	return (error);
}