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
typedef  int uint32_t ;
struct TYPE_2__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* mtkswitch_write ) (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ;} ;
struct mtkswitch_softc {int cpuport; TYPE_1__ hal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PCR_PORT_VLAN_SECURE ; 
 int PMCR_CFG_DEFAULT ; 
 int PMCR_FORCE_DPX ; 
 int PMCR_FORCE_LINK ; 
 int PMCR_FORCE_MODE ; 
 int PMCR_FORCE_SPD_1000 ; 
 int PVC_VLAN_ATTR_MASK ; 
 int FUNC3 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct mtkswitch_softc *sc, int port)
{
	uint32_t val;

	/* Called early and hence unlocked */

	/* Set the port to secure mode */
	val = sc->hal.mtkswitch_read(sc, FUNC0(port));
	val |= PCR_PORT_VLAN_SECURE;
	sc->hal.mtkswitch_write(sc, FUNC0(port), val);

	/* Set port's vlan_attr to user port */
	val = sc->hal.mtkswitch_read(sc, FUNC2(port));
	val &= ~PVC_VLAN_ATTR_MASK;
	sc->hal.mtkswitch_write(sc, FUNC2(port), val);

	val = PMCR_CFG_DEFAULT;
	if (port == sc->cpuport)
		val |= PMCR_FORCE_LINK | PMCR_FORCE_DPX | PMCR_FORCE_SPD_1000 |
		    PMCR_FORCE_MODE;
	/* Set port's MAC to default settings */
	sc->hal.mtkswitch_write(sc, FUNC1(port), val);
}