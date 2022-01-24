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
struct TYPE_2__ {int es_nvlangroups; int es_nports; } ;
struct mtkswitch_softc {scalar_t__ sc_switchtype; int numports; int valid_vlans; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTKSWITCH_POC2 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MTK_SWITCH_RT3050 ; 
 int POC2_UNTAG_VLAN ; 
 int PVID_MASK ; 
 int FUNC9 (int) ; 
 int VLANI_MASK ; 
 int FUNC10 (int) ; 
 int VMSC_MASK ; 
 int FUNC11 (int) ; 
 int VUB_MASK ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(struct mtkswitch_softc *sc)
{
	uint32_t val, vid;
	int i;

	FUNC1(sc, MA_NOTOWNED);
	FUNC0(sc);

	/* Reset everything to defaults first */
	for (i = 0; i < sc->info.es_nvlangroups; i++) {
		/* Remove all VLAN members and untag info, if any */
		if (i % 4 == 0) {
			FUNC8(sc, FUNC6(i), 0);
			if (sc->sc_switchtype != MTK_SWITCH_RT3050)
				FUNC8(sc, FUNC7(i), 0);
		}
		/* Reset to default VIDs */
		val = FUNC3(sc, FUNC5(i));
		val &= ~(VLANI_MASK << FUNC10(i));
		val |= ((i + 1) << FUNC10(i));
		FUNC8(sc, FUNC5(i), val);
	}

	/* Now, add all ports as untagged members to VLAN1 */
	vid = 0;
	val = FUNC3(sc, FUNC6(vid));
	val &= ~(VMSC_MASK << FUNC11(vid));
	val |= (((1<<sc->numports)-1) << FUNC11(vid));
	FUNC8(sc, FUNC6(vid), val);
	if (sc->sc_switchtype != MTK_SWITCH_RT3050) {
		val = FUNC3(sc, FUNC7(vid));
		val &= ~(VUB_MASK << FUNC12(vid));
		val |= (((1<<sc->numports)-1) << FUNC12(vid));
		FUNC8(sc, FUNC7(vid), val);
	}
	val = FUNC3(sc, MTKSWITCH_POC2);
	if (sc->sc_switchtype != MTK_SWITCH_RT3050)
		val |= POC2_UNTAG_VLAN;
	val |= ((1<<sc->numports)-1);
	FUNC8(sc, MTKSWITCH_POC2, val);

	/* only the first vlangroup is valid */
	sc->valid_vlans = (1<<0);

	/* Set all port PVIDs to 1 */
	vid = 1;
	for (i = 0; i < sc->info.es_nports; i++) {
		val = FUNC3(sc, FUNC2(i));
		val &= ~(PVID_MASK << FUNC9(i));
		val |= (vid << FUNC9(i));
		FUNC8(sc, FUNC2(i), val);
	}

	FUNC4(sc);
}