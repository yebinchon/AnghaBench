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
struct nameidata {int ni_lcf; int /*<<< orphan*/  ni_cap_tracker; struct vnode* ni_beneath_latch; } ;
struct nameicap_tracker {struct vnode* dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NI_LCF_BENEATH_ABS ; 
 int NI_LCF_BENEATH_LATCHED ; 
 int NI_LCF_CAP_DOTDOT ; 
 int NI_LCF_LATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nameicap_tracker*,int /*<<< orphan*/ ) ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  nm_link ; 
 int /*<<< orphan*/  nt_zone ; 
 struct nameicap_tracker* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

__attribute__((used)) static void
FUNC4(struct nameidata *ndp, struct vnode *dp)
{
	struct nameicap_tracker *nt;

	if ((ndp->ni_lcf & NI_LCF_CAP_DOTDOT) == 0 || dp->v_type != VDIR)
		return;
	if ((ndp->ni_lcf & (NI_LCF_BENEATH_ABS | NI_LCF_BENEATH_LATCHED)) ==
	    NI_LCF_BENEATH_ABS) {
		FUNC0((ndp->ni_lcf & NI_LCF_LATCH) != 0);
		if (dp != ndp->ni_beneath_latch)
			return;
		ndp->ni_lcf |= NI_LCF_BENEATH_LATCHED;
	}
	nt = FUNC2(nt_zone, M_WAITOK);
	FUNC3(dp);
	nt->dp = dp;
	FUNC1(&ndp->ni_cap_tracker, nt, nm_link);
}