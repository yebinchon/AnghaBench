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
struct iwm_vap {int /*<<< orphan*/  iv_vap; int /*<<< orphan*/  phy_ctxt; } ;
struct iwm_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct iwm_softc*,struct iwm_vap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iwm_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct iwm_softc *sc, struct iwm_vap *ivp)
{
	int ret;

	if (!ivp->phy_ctxt)
		return EINVAL;

	ret = FUNC1(sc, ivp, ivp->phy_ctxt, FALSE);

	if (!ret) {
		if (FUNC2(sc, &ivp->iv_vap, TRUE))
			FUNC0(sc->sc_dev,
			    "Failed to update SF state\n");
	}

	return ret;
}