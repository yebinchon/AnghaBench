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
struct ucred {int cr_ref; int /*<<< orphan*/  cr_loginclass; int /*<<< orphan*/  cr_prison; int /*<<< orphan*/  cr_ruidinfo; int /*<<< orphan*/  cr_uidinfo; int /*<<< orphan*/  cr_groups; int /*<<< orphan*/  cr_ngroups; int /*<<< orphan*/  cr_startcopy; int /*<<< orphan*/  cr_endcopy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct ucred *dest, struct ucred *src)
{

	FUNC0(dest->cr_ref == 1, ("crcopy of shared ucred"));
	FUNC2(&src->cr_startcopy, &dest->cr_startcopy,
	    (unsigned)((caddr_t)&src->cr_endcopy -
		(caddr_t)&src->cr_startcopy));
	FUNC3(dest, src->cr_ngroups, src->cr_groups);
	FUNC7(dest->cr_uidinfo);
	FUNC7(dest->cr_ruidinfo);
	FUNC6(dest->cr_prison);
	FUNC4(dest->cr_loginclass);
#ifdef AUDIT
	audit_cred_copy(src, dest);
#endif
#ifdef MAC
	mac_cred_copy(src, dest);
#endif
}