#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mii_data {int /*<<< orphan*/  mii_media; int /*<<< orphan*/  mii_ifp; } ;
struct ifmediareq {int ifm_status; int ifm_active; int ifm_current; scalar_t__ ifm_mask; scalar_t__ ifm_count; } ;
struct TYPE_16__ {scalar_t__ es_port; int /*<<< orphan*/  es_ifr; struct ifmediareq es_ifmr; int /*<<< orphan*/  es_flags; int /*<<< orphan*/  es_pvid; } ;
typedef  TYPE_1__ etherswitch_port_t ;
struct TYPE_17__ {scalar_t__ num_ports; } ;
typedef  TYPE_2__ e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERSWITCH_PORT_CPU ; 
 int /*<<< orphan*/  ETHERSWITCH_PORT_DROPTAGGED ; 
 int /*<<< orphan*/  ETHERSWITCH_PORT_DROPUNTAGGED ; 
 int IFM_1000_T ; 
 int IFM_2500_T ; 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  PORT_CONTROL2 ; 
 int PORT_CONTROL2_DISC_TAGGED ; 
 int PORT_CONTROL2_DISC_UNTAGGED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  SA_UNLOCKED ; 
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 
 struct mii_data* FUNC10 (TYPE_2__*,scalar_t__) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev, etherswitch_port_t *p)
{
	struct mii_data *mii;
	int err;
	struct ifmediareq *ifmr;
	uint32_t reg;

	e6000sw_softc_t *sc = FUNC4(dev);
	FUNC1(sc, SA_UNLOCKED);

	if (p->es_port >= sc->num_ports || p->es_port < 0)
		return (EINVAL);
	if (!FUNC9(sc, p->es_port))
		return (0);

	FUNC0(sc);
	FUNC5(sc, p->es_port, &p->es_pvid);

	/* Port flags. */
	reg = FUNC11(sc, FUNC3(sc, p->es_port), PORT_CONTROL2);
	if (reg & PORT_CONTROL2_DISC_TAGGED)
		p->es_flags |= ETHERSWITCH_PORT_DROPTAGGED;
	if (reg & PORT_CONTROL2_DISC_UNTAGGED)
		p->es_flags |= ETHERSWITCH_PORT_DROPUNTAGGED;

	err = 0;
	if (FUNC8(sc, p->es_port)) {
		if (FUNC6(sc, p->es_port))
			p->es_flags |= ETHERSWITCH_PORT_CPU;
		ifmr = &p->es_ifmr;
		ifmr->ifm_status = IFM_ACTIVE | IFM_AVALID;
		ifmr->ifm_count = 0;
		if (FUNC7(sc, p->es_port))
			ifmr->ifm_active = IFM_2500_T;
		else
			ifmr->ifm_active = IFM_1000_T;
		ifmr->ifm_active |= IFM_ETHER | IFM_FDX;
		ifmr->ifm_current = ifmr->ifm_active;
		ifmr->ifm_mask = 0;
	} else {
		mii = FUNC10(sc, p->es_port);
		err = FUNC12(mii->mii_ifp, &p->es_ifr,
		    &mii->mii_media, SIOCGIFMEDIA);
	}
	FUNC2(sc);

	return (err);
}