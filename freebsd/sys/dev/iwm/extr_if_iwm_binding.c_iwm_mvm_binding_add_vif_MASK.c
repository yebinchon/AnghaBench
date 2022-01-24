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
struct iwm_vap {int /*<<< orphan*/  phy_ctxt; int /*<<< orphan*/  iv_vap; } ;
struct iwm_softc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct iwm_softc*,struct iwm_vap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iwm_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(struct iwm_softc *sc, struct iwm_vap *ivp)
{
	if (!ivp->phy_ctxt)
		return EINVAL;

	/*
	 * Update SF - Disable if needed. if this fails, SF might still be on
	 * while many macs are bound, which is forbidden - so fail the binding.
	 */
	if (FUNC1(sc, &ivp->iv_vap, FALSE))
		return EINVAL;

	return FUNC0(sc, ivp, ivp->phy_ctxt, TRUE);
}