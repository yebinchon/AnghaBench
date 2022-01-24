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
struct ukswitch_softc {size_t numports; scalar_t__* portphy; scalar_t__ cpuport; } ;
struct ifmedia {int dummy; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {size_t es_port; int /*<<< orphan*/  es_ifr; } ;
typedef  TYPE_1__ etherswitch_port_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SIOCSIFMEDIA ; 
 struct ukswitch_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ifnet*,int /*<<< orphan*/ *,struct ifmedia*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC2 (struct ukswitch_softc*,size_t) ; 
 struct mii_data* FUNC3 (struct ukswitch_softc*,size_t) ; 

__attribute__((used)) static int
FUNC4(device_t dev, etherswitch_port_t *p)
{
	struct ukswitch_softc *sc = FUNC0(dev);
	struct ifmedia *ifm;
	struct mii_data *mii;
	struct ifnet *ifp;
	int err;

	if (p->es_port < 0 || p->es_port >= sc->numports)
		return (ENXIO);

	if (sc->portphy[p->es_port] == sc->cpuport)
		return (ENXIO);

	mii = FUNC3(sc, p->es_port);
	if (mii == NULL)
		return (ENXIO);

	ifp = FUNC2(sc, p->es_port);

	ifm = &mii->mii_media;
	err = FUNC1(ifp, &p->es_ifr, ifm, SIOCSIFMEDIA);
	return (err);
}