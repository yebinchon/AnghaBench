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
struct xl_softc {TYPE_1__* xl_ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct xl_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg, int pending)
{
	struct xl_softc *sc = (struct xl_softc *)arg;

	FUNC0(sc);
	if (sc->xl_ifp->if_drv_flags & IFF_DRV_RUNNING)
		FUNC2(sc);
	FUNC1(sc);
}