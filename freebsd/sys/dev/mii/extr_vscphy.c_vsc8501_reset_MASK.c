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
struct vscphy_softc {int /*<<< orphan*/  contype; int /*<<< orphan*/  mii_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSC8501_EXTCTL1_REG ; 
 int VSC8501_EXTCTL1_RGMII_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vscphy_softc*) ; 
 int FUNC3 (struct vscphy_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vscphy_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct vscphy_softc *vsc)
{
	int reg;

	/*
	 * Must set whether the mac<->phy connection is RGMII first; changes to
	 * that bit take effect only after a softreset.
	 */
	reg = FUNC3(vsc, VSC8501_EXTCTL1_REG);
	if (FUNC0(vsc->contype))
		reg |= VSC8501_EXTCTL1_RGMII_MODE;
	else
		reg &= ~VSC8501_EXTCTL1_RGMII_MODE;
	FUNC4(vsc, VSC8501_EXTCTL1_REG, reg);

	FUNC1(&vsc->mii_sc);

	/*
	 * Setup rgmii control register if necessary, after softreset.
	 */
	if (FUNC0(vsc->contype))
	    FUNC2(vsc);
}