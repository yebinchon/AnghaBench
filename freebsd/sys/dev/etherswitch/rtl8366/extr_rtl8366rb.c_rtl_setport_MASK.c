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
struct rtl8366rb_softc {int numphys; int* vid; int /*<<< orphan*/ * ifp; int /*<<< orphan*/ * miibus; scalar_t__ phy4cpu; } ;
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct TYPE_3__ {int es_port; int es_pvid; int /*<<< orphan*/  es_ifr; } ;
typedef  TYPE_1__ etherswitch_port_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int ETHERSWITCH_VID_MASK ; 
 int RTL8366_NUM_VLANS ; 
 int RTL8366_PVCR_PORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  RTL_WAITOK ; 
 int /*<<< orphan*/  SIOCSIFMEDIA ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifmedia*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, etherswitch_port_t *p)
{
	struct rtl8366rb_softc *sc;
	int i, err, vlangroup;
	struct ifmedia *ifm;
	struct mii_data *mii;
	int port;

	sc = FUNC2(dev);

	if (p->es_port < 0 || p->es_port >= (sc->numphys + 1))
		return (ENXIO);
	vlangroup = -1;
	for (i = 0; i < RTL8366_NUM_VLANS; i++) {
		if ((sc->vid[i] & ETHERSWITCH_VID_MASK) == p->es_pvid) {
			vlangroup = i;
			break;
		}
	}
	if (vlangroup == -1)
		return (ENXIO);
	if (sc->phy4cpu && p->es_port == sc->numphys) {
		port = p->es_port + 1;
	} else {
		port = p->es_port;
	}
	err = FUNC4(dev, FUNC0(port),
	    FUNC1(port, RTL8366_PVCR_PORT_MASK),
	    FUNC1(port, vlangroup), RTL_WAITOK);
	if (err)
		return (err);
	/* CPU Port */
	if (p->es_port == sc->numphys)
		return (0);
	mii = FUNC2(sc->miibus[p->es_port]);
	ifm = &mii->mii_media;
	err = FUNC3(sc->ifp[p->es_port], &p->es_ifr, ifm, SIOCSIFMEDIA);
	return (err);
}