#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {scalar_t__ es_nvlangroups; int es_nports; } ;
struct TYPE_5__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* mtkswitch_write ) (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ;} ;
struct mtkswitch_softc {scalar_t__ vlan_mode; scalar_t__ sc_switchtype; TYPE_2__ info; TYPE_1__ hal; } ;
struct TYPE_7__ {scalar_t__ es_vlangroup; int es_untagged_ports; int es_member_ports; int es_vid; scalar_t__ es_fid; } ;
typedef  TYPE_3__ etherswitch_vlangroup_t ;

/* Variables and functions */
 int EINVAL ; 
 int ETHERSWITCH_VID_VALID ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  MTKSWITCH_VAWD1 ; 
 int /*<<< orphan*/  MTKSWITCH_VAWD2 ; 
 int /*<<< orphan*/  MTKSWITCH_VTCR ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ MTK_SWITCH_MT7620 ; 
 int VAWD1_MEMBER_MASK ; 
 int VAWD1_MEMBER_OFF ; 
 int VAWD1_VALID ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int VTCR_BUSY ; 
 int VTCR_FUNC_VID_READ ; 
 int VTCR_IDX_INVALID ; 
 int VTCR_VID_MASK ; 
 int VTIM_MASK ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct mtkswitch_softc *sc, etherswitch_vlangroup_t *v)
{
	uint32_t val, i;

	FUNC1(sc, MA_NOTOWNED);

	if ((sc->vlan_mode != ETHERSWITCH_VLAN_DOT1Q) ||
	    (v->es_vlangroup > sc->info.es_nvlangroups))
		return (EINVAL);

	/* Reset the member ports. */
	v->es_untagged_ports = 0;
	v->es_member_ports = 0;

	/* Not supported for now */
	v->es_fid = 0;

	FUNC0(sc);
	if (sc->sc_switchtype == MTK_SWITCH_MT7620) {
		v->es_vid = (sc->hal.mtkswitch_read(sc,
		    FUNC3(v->es_vlangroup)) >>
		    FUNC6(v->es_vlangroup)) & VTIM_MASK;
	} else {
		v->es_vid = v->es_vlangroup;
	}

	while (sc->hal.mtkswitch_read(sc, MTKSWITCH_VTCR) & VTCR_BUSY);
	sc->hal.mtkswitch_write(sc, MTKSWITCH_VTCR, VTCR_BUSY |
	    VTCR_FUNC_VID_READ | (v->es_vlangroup & VTCR_VID_MASK));
	while ((val = sc->hal.mtkswitch_read(sc, MTKSWITCH_VTCR)) & VTCR_BUSY);
	if (val & VTCR_IDX_INVALID) {
		FUNC2(sc);
		return (0);
	}

	val = sc->hal.mtkswitch_read(sc, MTKSWITCH_VAWD1);
	if (val & VAWD1_VALID)
		v->es_vid |= ETHERSWITCH_VID_VALID;
	else {
		FUNC2(sc);
		return (0);
	}
	v->es_member_ports = (val >> VAWD1_MEMBER_OFF) & VAWD1_MEMBER_MASK;

	val = sc->hal.mtkswitch_read(sc, MTKSWITCH_VAWD2);
	for (i = 0; i < sc->info.es_nports; i++) {
		if ((val & FUNC4(i)) == FUNC5(i))
			v->es_untagged_ports |= (1<<i);
	}

	FUNC2(sc);
	return (0);
}