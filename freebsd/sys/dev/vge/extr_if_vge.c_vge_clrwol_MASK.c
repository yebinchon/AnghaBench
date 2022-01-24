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
typedef  int uint8_t ;
struct vge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VGE_DIAGCTL ; 
 int /*<<< orphan*/  VGE_DIAGCTL_GMII ; 
 int /*<<< orphan*/  VGE_DIAGCTL_MACFORCE ; 
 int /*<<< orphan*/  VGE_PWRSTAT ; 
 int VGE_STICKHW_DS0 ; 
 int VGE_STICKHW_DS1 ; 
 int VGE_STICKHW_SWPTAG ; 
 int /*<<< orphan*/  VGE_WOLCFGC ; 
 int VGE_WOLCFG_PMEOVR ; 
 int VGE_WOLCFG_SAB ; 
 int VGE_WOLCFG_SAM ; 
 int /*<<< orphan*/  VGE_WOLCR0C ; 
 int VGE_WOLCR0_PATTERN_ALL ; 
 int /*<<< orphan*/  VGE_WOLCR1C ; 
 int /*<<< orphan*/  VGE_WOLSR0C ; 
 int /*<<< orphan*/  VGE_WOLSR1C ; 

__attribute__((used)) static void
FUNC3(struct vge_softc *sc)
{
	uint8_t val;

	val = FUNC1(sc, VGE_PWRSTAT);
	val &= ~VGE_STICKHW_SWPTAG;
	FUNC2(sc, VGE_PWRSTAT, val);
	/* Disable WOL and clear power state indicator. */
	val = FUNC1(sc, VGE_PWRSTAT);
	val &= ~(VGE_STICKHW_DS0 | VGE_STICKHW_DS1);
	FUNC2(sc, VGE_PWRSTAT, val);

	FUNC0(sc, VGE_DIAGCTL, VGE_DIAGCTL_GMII);
	FUNC0(sc, VGE_DIAGCTL, VGE_DIAGCTL_MACFORCE);

	/* Clear WOL on pattern match. */
	FUNC2(sc, VGE_WOLCR0C, VGE_WOLCR0_PATTERN_ALL);
	/* Disable WOL on magic/unicast packet. */
	FUNC2(sc, VGE_WOLCR1C, 0x0F);
	FUNC2(sc, VGE_WOLCFGC, VGE_WOLCFG_SAB | VGE_WOLCFG_SAM |
	    VGE_WOLCFG_PMEOVR);
	/* Clear WOL status on pattern match. */
	FUNC2(sc, VGE_WOLSR0C, 0xFF);
	FUNC2(sc, VGE_WOLSR1C, 0xFF);
}