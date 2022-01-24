#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ksz8995ma_softc {int numports; scalar_t__ vlan_mode; int* portphy; int cpuport; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {int es_port; int es_pvid; int es_flags; int /*<<< orphan*/  es_ifr; } ;
typedef  TYPE_1__ etherswitch_port_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int ETHERSWITCH_PORT_ADDTAG ; 
 int ETHERSWITCH_PORT_DROPUNTAGGED ; 
 int ETHERSWITCH_PORT_INGRESS ; 
 int ETHERSWITCH_PORT_STRIPTAG ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 int KSZ8995MA_DROP_NONPVID ; 
 int KSZ8995MA_INGR_FILT ; 
 scalar_t__ KSZ8995MA_PC0_BASE ; 
 scalar_t__ KSZ8995MA_PC2_BASE ; 
 scalar_t__ KSZ8995MA_PC3_BASE ; 
 scalar_t__ KSZ8995MA_PC4_BASE ; 
 int KSZ8995MA_PORT_SIZE ; 
 int KSZ8995MA_TAG_INS ; 
 int KSZ8995MA_TAG_RM ; 
 int /*<<< orphan*/  SIOCSIFMEDIA ; 
 struct ksz8995ma_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ifnet*,int /*<<< orphan*/ *,struct ifmedia*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC2 (struct ksz8995ma_softc*,size_t) ; 
 struct mii_data* FUNC3 (struct ksz8995ma_softc*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, etherswitch_port_t *p)
{
	struct ksz8995ma_softc *sc;
	struct mii_data *mii;
        struct ifmedia *ifm;
        struct ifnet *ifp;
	int phy, err;
	int portreg;

	sc = FUNC0(dev);

	if (p->es_port < 0 || p->es_port >= sc->numports)
		return (ENXIO);

	if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
		FUNC5(dev, KSZ8995MA_PC4_BASE + 
		    KSZ8995MA_PORT_SIZE * p->es_port, p->es_pvid & 0xff);
		portreg = FUNC4(dev, KSZ8995MA_PC3_BASE + 
		    KSZ8995MA_PORT_SIZE * p->es_port);
		FUNC5(dev, KSZ8995MA_PC3_BASE + 
		    KSZ8995MA_PORT_SIZE * p->es_port,
		    (portreg & 0xf0) | ((p->es_pvid >> 8) & 0x0f));

		portreg = FUNC4(dev, KSZ8995MA_PC0_BASE + 
		    KSZ8995MA_PORT_SIZE * p->es_port);
		if (p->es_flags & ETHERSWITCH_PORT_ADDTAG)
			portreg |= KSZ8995MA_TAG_INS;
		else
			portreg &= ~KSZ8995MA_TAG_INS;
		if (p->es_flags & ETHERSWITCH_PORT_STRIPTAG) 
			portreg |= KSZ8995MA_TAG_RM;
		else
			portreg &= ~KSZ8995MA_TAG_RM;
		FUNC5(dev, KSZ8995MA_PC0_BASE + 
		    KSZ8995MA_PORT_SIZE * p->es_port, portreg);

		portreg = FUNC4(dev, KSZ8995MA_PC2_BASE + 
		    KSZ8995MA_PORT_SIZE * p->es_port);
		if (p->es_flags & ETHERSWITCH_PORT_DROPUNTAGGED)
			portreg |= KSZ8995MA_DROP_NONPVID;
		else
			portreg &= ~KSZ8995MA_DROP_NONPVID;
		if (p->es_flags & ETHERSWITCH_PORT_INGRESS)
			portreg |= KSZ8995MA_INGR_FILT;
		else
			portreg &= ~KSZ8995MA_INGR_FILT;
		FUNC5(dev, KSZ8995MA_PC2_BASE + 
		    KSZ8995MA_PORT_SIZE * p->es_port, portreg);
	}

	phy = sc->portphy[p->es_port];
	mii = FUNC3(sc, p->es_port);
	if (phy != sc->cpuport) {
		if (mii == NULL)
			return (ENXIO);
		ifp = FUNC2(sc, p->es_port);
		ifm = &mii->mii_media;
		err = FUNC1(ifp, &p->es_ifr, ifm, SIOCSIFMEDIA);
	}
	return (0);
}