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
struct ucred {int cr_ref; scalar_t__ cr_groups; scalar_t__ cr_smallgroups; int /*<<< orphan*/ * cr_loginclass; int /*<<< orphan*/ * cr_prison; int /*<<< orphan*/ * cr_ruidinfo; int /*<<< orphan*/ * cr_uidinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_CRED ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct ucred *cr)
{

	FUNC0(cr->cr_ref > 0, ("bad ucred refcount: %d", cr->cr_ref));
	FUNC0(cr->cr_ref != 0xdeadc0de, ("dangling reference to ucred"));
	if (FUNC6(&cr->cr_ref)) {
		/*
		 * Some callers of crget(), such as nfs_statfs(),
		 * allocate a temporary credential, but don't
		 * allocate a uidinfo structure.
		 */
		if (cr->cr_uidinfo != NULL)
			FUNC7(cr->cr_uidinfo);
		if (cr->cr_ruidinfo != NULL)
			FUNC7(cr->cr_ruidinfo);
		/*
		 * Free a prison, if any.
		 */
		if (cr->cr_prison != NULL)
			FUNC5(cr->cr_prison);
		if (cr->cr_loginclass != NULL)
			FUNC3(cr->cr_loginclass);
#ifdef AUDIT
		audit_cred_destroy(cr);
#endif
#ifdef MAC
		mac_cred_destroy(cr);
#endif
		if (cr->cr_groups != cr->cr_smallgroups)
			FUNC2(cr->cr_groups, M_CRED);
		FUNC2(cr, M_CRED);
	}
}