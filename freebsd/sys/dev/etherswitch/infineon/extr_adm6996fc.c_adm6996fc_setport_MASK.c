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
struct adm6996fc_softc {size_t numports; scalar_t__ vlan_mode; scalar_t__* portphy; scalar_t__ cpuport; } ;
struct TYPE_3__ {size_t es_port; int es_pvid; int es_flags; int /*<<< orphan*/  es_ifr; } ;
typedef  TYPE_1__ etherswitch_port_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ADM6996FC_OPTE_SHIFT ; 
 int ADM6996FC_PVID_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int ENXIO ; 
 int ETHERSWITCH_PORT_ADDTAG ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 int /*<<< orphan*/  SIOCSIFMEDIA ; 
 struct ifnet* FUNC2 (struct adm6996fc_softc*,size_t) ; 
 struct mii_data* FUNC3 (struct adm6996fc_softc*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct adm6996fc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ifnet*,int /*<<< orphan*/ *,struct ifmedia*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, etherswitch_port_t *p)
{
	struct adm6996fc_softc	*sc;
	struct ifmedia		*ifm;
	struct mii_data		*mii;
	struct ifnet		*ifp;
	device_t		 parent;
	int 			 err;
	int			 data;

	int	bcaddr[6] = {0x01, 0x03, 0x05, 0x07, 0x08, 0x09};
	int	vidaddr[6] = {0x28, 0x29, 0x2a, 0x2b, 0x2b, 0x2c};

	sc = FUNC5(dev);
	parent = FUNC4(dev);

	if (p->es_port < 0 || p->es_port >= sc->numports)
		return (ENXIO);

	if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
		data = FUNC0(parent, bcaddr[p->es_port]);
		data &= ~(0xf << 10);
		data |= (p->es_pvid & 0xf) << ADM6996FC_PVID_SHIFT;
		if (p->es_flags & ETHERSWITCH_PORT_ADDTAG)
			data |= 1 << ADM6996FC_OPTE_SHIFT;
		else
			data &= ~(1 << ADM6996FC_OPTE_SHIFT);
		FUNC1(parent, bcaddr[p->es_port], data);
		data = FUNC0(parent, vidaddr[p->es_port]);
		/* only port 4 is hi bit */
		if (p->es_port == 4) {
			data &= ~(0xff << 8);
			data = data | (((p->es_pvid >> 4) & 0xff) << 8);
		} else {
			data &= ~0xff;
			data = data | ((p->es_pvid >> 4) & 0xff);
		}
		FUNC1(parent, vidaddr[p->es_port], data);
		err = 0;
	} else {
		if (sc->portphy[p->es_port] == sc->cpuport)
			return (ENXIO);
	} 

	if (sc->portphy[p->es_port] != sc->cpuport) {
		mii = FUNC3(sc, p->es_port);
		if (mii == NULL)
			return (ENXIO);

		ifp = FUNC2(sc, p->es_port);

		ifm = &mii->mii_media;
		err = FUNC6(ifp, &p->es_ifr, ifm, SIOCSIFMEDIA);
	}
	return (err);
}