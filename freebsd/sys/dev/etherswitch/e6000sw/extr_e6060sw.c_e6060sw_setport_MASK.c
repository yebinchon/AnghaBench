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
struct ifnet {int dummy; } ;
struct e6060sw_softc {size_t numports; scalar_t__ vlan_mode; scalar_t__* portphy; scalar_t__ cpuport; scalar_t__ smi_offset; } ;
struct TYPE_3__ {size_t es_port; int es_pvid; int /*<<< orphan*/  es_ifr; } ;
typedef  TYPE_1__ etherswitch_port_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ CORE_REGISTER ; 
 int ENXIO ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PORT_DEFVLAN ; 
 int /*<<< orphan*/  SIOCSIFMEDIA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct e6060sw_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC4 (struct e6060sw_softc*,size_t) ; 
 struct mii_data* FUNC5 (struct e6060sw_softc*,size_t) ; 
 int FUNC6 (struct ifnet*,int /*<<< orphan*/ *,struct ifmedia*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, etherswitch_port_t *p)
{
	struct e6060sw_softc *sc;
	struct ifmedia *ifm;
	struct mii_data *mii;
	struct ifnet *ifp;
	int err;
	int data;

	sc = FUNC3(dev);

	if (p->es_port < 0 || p->es_port >= sc->numports)
		return (ENXIO);

	if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
		data = FUNC0(FUNC2(dev), 
		    CORE_REGISTER + sc->smi_offset + p->es_port,
		    PORT_DEFVLAN);
		data &= ~0xfff;
		data |= p->es_pvid;
		data |= 1 << 12;
		FUNC1(FUNC2(dev), 
		    CORE_REGISTER + sc->smi_offset + p->es_port,
		    PORT_DEFVLAN, data);
	}

	if (sc->portphy[p->es_port] == sc->cpuport)
		return(0);

	mii = FUNC5(sc, p->es_port);
	if (mii == NULL)
		return (ENXIO);

	ifp = FUNC4(sc, p->es_port);

	ifm = &mii->mii_media;
	err = FUNC6(ifp, &p->es_ifr, ifm, SIOCSIFMEDIA);
	return (err);
}