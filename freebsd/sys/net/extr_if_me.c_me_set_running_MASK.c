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
struct me_softc {int /*<<< orphan*/  me_src; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 TYPE_1__* FUNC0 (struct me_softc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct me_softc *sc)
{

	if (FUNC1(sc->me_src))
		FUNC0(sc)->if_drv_flags |= IFF_DRV_RUNNING;
	else
		FUNC0(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
}