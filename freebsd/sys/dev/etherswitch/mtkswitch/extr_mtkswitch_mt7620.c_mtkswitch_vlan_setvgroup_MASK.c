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
struct TYPE_6__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* mtkswitch_write ) (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_5__ {scalar_t__ es_nvlangroups; int es_nports; } ;
struct mtkswitch_softc {scalar_t__ vlan_mode; scalar_t__ sc_switchtype; TYPE_2__ hal; TYPE_1__ info; } ;
struct TYPE_7__ {scalar_t__ es_vlangroup; scalar_t__ es_fid; int es_vid; int es_member_ports; int es_untagged_ports; } ;
typedef  TYPE_3__ etherswitch_vlangroup_t ;

/* Variables and functions */
 int EINVAL ; 
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
 int VAWD1_IVL_MAC ; 
 int VAWD1_MEMBER_MASK ; 
 int VAWD1_MEMBER_OFF ; 
 int VAWD1_VALID ; 
 int VAWD1_VTAG_EN ; 
 int FUNC4 (int) ; 
 int VTCR_BUSY ; 
 int VTCR_FUNC_VID_WRITE ; 
 int VTCR_IDX_INVALID ; 
 int VTCR_VID_MASK ; 
 int VTIM_MASK ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct mtkswitch_softc *sc, etherswitch_vlangroup_t *v)
{
	uint32_t val, i, vid;

	FUNC1(sc, MA_NOTOWNED);

	if ((sc->vlan_mode != ETHERSWITCH_VLAN_DOT1Q) ||
	    (v->es_vlangroup > sc->info.es_nvlangroups))
		return (EINVAL);

	/* We currently don't support FID */
	if (v->es_fid != 0)
		return (EINVAL);

	FUNC0(sc);
	while (sc->hal.mtkswitch_read(sc, MTKSWITCH_VTCR) & VTCR_BUSY);
	if (sc->sc_switchtype == MTK_SWITCH_MT7620) {
		val = sc->hal.mtkswitch_read(sc,
		    FUNC3(v->es_vlangroup));
		val &= ~(VTIM_MASK << FUNC5(v->es_vlangroup));
		val |= ((v->es_vid & VTIM_MASK) << FUNC5(v->es_vlangroup));
		sc->hal.mtkswitch_write(sc, FUNC3(v->es_vlangroup),
		    val);
		vid = v->es_vlangroup;
	} else
		vid = v->es_vid;

	/* We use FID 0 */
	val = VAWD1_IVL_MAC | VAWD1_VTAG_EN | VAWD1_VALID;
	val |= ((v->es_member_ports & VAWD1_MEMBER_MASK) << VAWD1_MEMBER_OFF);
	sc->hal.mtkswitch_write(sc, MTKSWITCH_VAWD1, val);

	/* Set tagged ports */
	val = 0;
	for (i = 0; i < sc->info.es_nports; i++)
		if (((1<<i) & v->es_untagged_ports) == 0)
			val |= FUNC4(i);
	sc->hal.mtkswitch_write(sc, MTKSWITCH_VAWD2, val);

	/* Write the VLAN entry */
	sc->hal.mtkswitch_write(sc, MTKSWITCH_VTCR, VTCR_BUSY |
	    VTCR_FUNC_VID_WRITE | (vid & VTCR_VID_MASK));
	while ((val = sc->hal.mtkswitch_read(sc, MTKSWITCH_VTCR)) & VTCR_BUSY);

	FUNC2(sc);

	if (val & VTCR_IDX_INVALID)
		return (EINVAL);

	return (0);
}