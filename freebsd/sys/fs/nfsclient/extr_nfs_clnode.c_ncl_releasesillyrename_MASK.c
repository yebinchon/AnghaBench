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
struct vnode {scalar_t__ v_type; } ;
struct thread {int dummy; } ;
struct sillyrename {int /*<<< orphan*/  s_task; int /*<<< orphan*/  s_cred; } ;
struct nfsnode {struct sillyrename* n_sillyrename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sillyrename*) ; 
 scalar_t__ VDIR ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sillyrename*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ ,struct thread*,int) ; 
 int /*<<< orphan*/  nfs_freesillyrename ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC10(struct vnode *vp, struct thread *td)
{
	struct nfsnode *np;
	struct sillyrename *sp;

	FUNC0(vp, "releasesillyrename");
	np = FUNC5(vp);
	FUNC1(np);
	if (vp->v_type != VDIR) {
		sp = np->n_sillyrename;
		np->n_sillyrename = NULL;
	} else
		sp = NULL;
	if (sp != NULL) {
		FUNC3(np);
		(void) FUNC8(vp, 0, td, 1);
		/*
		 * Remove the silly file that was rename'd earlier
		 */
		FUNC7(sp, vp);
		FUNC6(sp->s_cred);
		FUNC4(&sp->s_task, 0, nfs_freesillyrename, sp);
		FUNC9(taskqueue_thread, &sp->s_task);
		FUNC2(np);
	}
}