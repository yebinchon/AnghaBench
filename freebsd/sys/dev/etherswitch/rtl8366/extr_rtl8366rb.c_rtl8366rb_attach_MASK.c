#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int es_nports; int /*<<< orphan*/  es_name; int /*<<< orphan*/  es_vlan_caps; int /*<<< orphan*/  es_nvlangroups; } ;
struct rtl8366rb_softc {int numphys; scalar_t__ chip_type; int /*<<< orphan*/  callout_mtx; int /*<<< orphan*/  callout_tick; TYPE_2__** ifp; int /*<<< orphan*/ * miibus; int /*<<< orphan*/ * ifname; TYPE_1__ info; scalar_t__ phy4cpu; scalar_t__ smi_acquired; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int if_flags; struct rtl8366rb_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETHERSWITCH_VLAN_DOT1Q ; 
 int IFF_BROADCAST ; 
 int IFF_DRV_RUNNING ; 
 int IFF_SIMPLEX ; 
 int IFF_UP ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ RTL8366RB ; 
 int /*<<< orphan*/  RTL8366_CVCR ; 
 int RTL8366_NUM_PHYS ; 
 int /*<<< orphan*/  RTL8366_NUM_VLANS ; 
 int /*<<< orphan*/  RTL_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 struct rtl8366rb_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  rtl8366rb_ifmedia_sts ; 
 int /*<<< orphan*/  rtl8366rb_ifmedia_upd ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rtl8366rb_softc*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC21 (char*) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	struct rtl8366rb_softc *sc;
	uint16_t rev = 0;
	char name[IFNAMSIZ];
	int err = 0;
	int i;

	sc = FUNC7(dev);

	sc->dev = dev;
	FUNC14(&sc->sc_mtx, "rtl8366rb", NULL, MTX_DEF);
	sc->smi_acquired = 0;
	FUNC14(&sc->callout_mtx, "rtl8366rbcallout", NULL, MTX_DEF);

	FUNC16(dev);
	FUNC18(dev, RTL8366_CVCR, &rev, RTL_WAITOK);
	FUNC9(dev, "rev. %d\n", rev & 0x000f);

	sc->phy4cpu = 0;
	(void) FUNC15(FUNC5(dev), FUNC8(dev),
	    "phy4cpu", &sc->phy4cpu);

	sc->numphys = sc->phy4cpu ? RTL8366_NUM_PHYS - 1 : RTL8366_NUM_PHYS;

	sc->info.es_nports = sc->numphys + 1;
	sc->info.es_nvlangroups = RTL8366_NUM_VLANS;
	sc->info.es_vlan_caps = ETHERSWITCH_VLAN_DOT1Q;
	if (sc->chip_type == RTL8366RB)
		FUNC20(sc->info.es_name, "Realtek RTL8366RB");
	else
		FUNC20(sc->info.es_name, "Realtek RTL8366SR");

	/* attach miibus and phys */
	/* PHYs need an interface, so we generate a dummy one */
	for (i = 0; i < sc->numphys; i++) {
		sc->ifp[i] = FUNC10(IFT_ETHER);
		if (sc->ifp[i] == NULL) {
			FUNC9(dev, "couldn't allocate ifnet structure\n");
			err = ENOMEM;
			break;
		}

		sc->ifp[i]->if_softc = sc;
		sc->ifp[i]->if_flags |= IFF_UP | IFF_BROADCAST | IFF_DRV_RUNNING
			| IFF_SIMPLEX;
		FUNC19(name, IFNAMSIZ, "%sport", FUNC6(dev));
		sc->ifname[i] = FUNC12(FUNC21(name)+1, M_DEVBUF, M_WAITOK);
		FUNC0(name, sc->ifname[i], FUNC21(name)+1);
		FUNC11(sc->ifp[i], sc->ifname[i], i);
		err = FUNC13(dev, &sc->miibus[i], sc->ifp[i], rtl8366rb_ifmedia_upd, \
			rtl8366rb_ifmedia_sts, BMSR_DEFCAPMASK, \
			i, MII_OFFSET_ANY, 0);
		if (err != 0) {
			FUNC9(dev, "attaching PHY %d failed\n", i);
			return (err);
		}
	}

	FUNC3(dev);
	FUNC1(dev);
	err = FUNC2(dev);
	if (err != 0)
		return (err);
	
	FUNC4(&sc->callout_tick, &sc->callout_mtx, 0);
	FUNC17(sc);
	
	return (err);
}