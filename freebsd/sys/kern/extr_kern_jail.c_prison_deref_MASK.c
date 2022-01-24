#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct prison {scalar_t__ pr_uref; int pr_ref; scalar_t__ pr_vnet; int /*<<< orphan*/  pr_mtx; int /*<<< orphan*/ * pr_cpuset; struct prison* pr_ip6; struct prison* pr_ip4; int /*<<< orphan*/ * pr_root; int /*<<< orphan*/  pr_childcount; struct prison* pr_parent; int /*<<< orphan*/  pr_id; } ;
struct TYPE_2__ {scalar_t__ pr_uref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct prison*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PRISON ; 
 int PD_DEREF ; 
 int PD_DEUREF ; 
 int PD_LIST_SLOCKED ; 
 int PD_LIST_XLOCKED ; 
 int PD_LOCKED ; 
 int /*<<< orphan*/  PR_METHOD_REMOVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct prison*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allprison ; 
 int /*<<< orphan*/  allprison_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct prison*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct prison*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct prison*) ; 
 int /*<<< orphan*/  pr_list ; 
 int /*<<< orphan*/  pr_sibling ; 
 TYPE_1__ prison0 ; 
 int /*<<< orphan*/  FUNC10 (struct prison*) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(struct prison *pr, int flags)
{
	struct prison *ppr, *tpr;
	int ref, lasturef;

	if (!(flags & PD_LOCKED))
		FUNC6(&pr->pr_mtx);
	for (;;) {
		if (flags & PD_DEUREF) {
			FUNC0(pr->pr_uref > 0,
			    ("prison_deref PD_DEUREF on a dead prison (jid=%d)",
			     pr->pr_id));
			pr->pr_uref--;
			lasturef = pr->pr_uref == 0;
			if (lasturef)
				pr->pr_ref++;
			FUNC0(prison0.pr_uref != 0, ("prison0 pr_uref=0"));
		} else
			lasturef = 0;
		if (flags & PD_DEREF) {
			FUNC0(pr->pr_ref > 0,
			    ("prison_deref PD_DEREF on a dead prison (jid=%d)",
			     pr->pr_id));
			pr->pr_ref--;
		}
		ref = pr->pr_ref;
		FUNC7(&pr->pr_mtx);

		/*
		 * Tell the modules if the last user reference was removed
		 * (even it sticks around in dying state).
		 */
		if (lasturef) {
			if (!(flags & (PD_LIST_SLOCKED | PD_LIST_XLOCKED))) {
				FUNC13(&allprison_lock);
				flags |= PD_LIST_XLOCKED;
			}
			(void)FUNC8(pr, PR_METHOD_REMOVE, NULL);
			FUNC6(&pr->pr_mtx);
			ref = --pr->pr_ref;
			FUNC7(&pr->pr_mtx);
		}

		/* If the prison still has references, nothing else to do. */
		if (ref > 0) {
			if (flags & PD_LIST_SLOCKED)
				FUNC11(&allprison_lock);
			else if (flags & PD_LIST_XLOCKED)
				FUNC14(&allprison_lock);
			return;
		}

		if (flags & PD_LIST_SLOCKED) {
			if (!FUNC12(&allprison_lock)) {
				FUNC11(&allprison_lock);
				FUNC13(&allprison_lock);
			}
		} else if (!(flags & PD_LIST_XLOCKED))
			FUNC13(&allprison_lock);

		FUNC2(&allprison, pr, pr_list);
		FUNC1(pr, pr_sibling);
		ppr = pr->pr_parent;
		for (tpr = ppr; tpr != NULL; tpr = tpr->pr_parent)
			tpr->pr_childcount--;
		FUNC14(&allprison_lock);

#ifdef VIMAGE
		if (pr->pr_vnet != ppr->pr_vnet)
			vnet_destroy(pr->pr_vnet);
#endif
		if (pr->pr_root != NULL)
			FUNC16(pr->pr_root);
		FUNC5(&pr->pr_mtx);
#ifdef INET
		free(pr->pr_ip4, M_PRISON);
#endif
#ifdef INET6
		free(pr->pr_ip6, M_PRISON);
#endif
		if (pr->pr_cpuset != NULL)
			FUNC3(pr->pr_cpuset);
		FUNC9(pr);
#ifdef RACCT
		if (racct_enable)
			prison_racct_detach(pr);
#endif
		FUNC4(pr, M_PRISON);

		/* Removing a prison frees a reference on its parent. */
		pr = ppr;
		FUNC6(&pr->pr_mtx);
		flags = PD_DEREF | PD_DEUREF;
	}
}