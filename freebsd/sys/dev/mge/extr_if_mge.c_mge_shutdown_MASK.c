#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mge_softc {TYPE_1__* ifp; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int if_capenable; } ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mge_softc*) ; 
 struct mge_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mge_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct mge_softc *sc = FUNC2(dev);

	FUNC0(sc);

#ifdef DEVICE_POLLING
        if (sc->ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(sc->ifp);
#endif

	FUNC4(sc);

	FUNC1(sc);

	return (0);
}