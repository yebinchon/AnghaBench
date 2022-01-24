#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int es_nvlangroups; } ;
struct mtkswitch_softc {scalar_t__ vlan_mode; scalar_t__ sc_switchtype; int valid_vlans; TYPE_1__ info; } ;
struct TYPE_5__ {int es_vlangroup; int es_untagged_ports; int es_member_ports; int es_vid; } ;
typedef  TYPE_2__ etherswitch_vlangroup_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTKSWITCH_POC2 ; 
 int FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MTK_SWITCH_RT3050 ; 
 int POC2_UNTAG_VLAN ; 
 int VLANI_MASK ; 
 int FUNC8 (int) ; 
 int VMSC_MASK ; 
 int FUNC9 (int) ; 
 int VUB_MASK ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct mtkswitch_softc *sc, etherswitch_vlangroup_t *v)
{
	uint32_t val, tmp;

	if ((sc->vlan_mode != ETHERSWITCH_VLAN_DOT1Q) ||
	    (v->es_vlangroup > sc->info.es_nvlangroups))
		return (EINVAL);

	FUNC1(sc, MA_NOTOWNED);
	FUNC0(sc);
	/* First, see if we can accomodate the request at all */
	val = FUNC2(sc, MTKSWITCH_POC2);
	if (sc->sc_switchtype == MTK_SWITCH_RT3050 ||
	    (val & POC2_UNTAG_VLAN) == 0) {
		/*
		 * There are 2 things we can't support in per-port untagging
		 * mode:
		 * 1. Adding a port as an untagged member if the port is not
		 *    set up to do untagging.
		 * 2. Adding a port as a tagged member if the port is set up
		 *    to do untagging.
		 */
		val &= VUB_MASK;

		/* get all untagged members from the member list */
		tmp = v->es_untagged_ports & v->es_member_ports;
		/* fail if untagged members are not a subset of all members */
		if (tmp != v->es_untagged_ports) {
			/* Cannot accomodate request */
			FUNC3(sc);
			return (ENOTSUP);
		}

		/* fail if any untagged member is set up to do tagging */
		if ((tmp & val) != tmp) {
			/* Cannot accomodate request */
			FUNC3(sc);
			return (ENOTSUP);
		}

		/* now, get the list of all tagged members */
		tmp = v->es_member_ports & ~tmp;
		/* fail if any tagged member is set up to do untagging */
		if ((tmp & val) != 0) {
			/* Cannot accomodate request */
			FUNC3(sc);
			return (ENOTSUP);
		}
	} else {
		/* Prefer per-Vlan untag and set its members */
		val = FUNC2(sc, FUNC6(v->es_vlangroup));
		val &= ~(VUB_MASK << FUNC10(v->es_vlangroup));
		val |= (((v->es_untagged_ports) & VUB_MASK) <<
		    FUNC10(v->es_vlangroup));
		FUNC7(sc, FUNC6(v->es_vlangroup), val);
	}

	/* Set VID */
	val = FUNC2(sc, FUNC4(v->es_vlangroup));
	val &= ~(VLANI_MASK << FUNC8(v->es_vlangroup));
	val |= (v->es_vid & VLANI_MASK) << FUNC8(v->es_vlangroup);
	FUNC7(sc, FUNC4(v->es_vlangroup), val);

	/* Set members */
	val = FUNC2(sc, FUNC5(v->es_vlangroup));
	val &= ~(VMSC_MASK << FUNC9(v->es_vlangroup));
	val |= (v->es_member_ports << FUNC9(v->es_vlangroup));
	FUNC7(sc, FUNC5(v->es_vlangroup), val);

	sc->valid_vlans |= (1<<v->es_vlangroup);

	FUNC3(sc);
	return (0);
}