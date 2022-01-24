#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct oce_wq {int /*<<< orphan*/  txtask; int /*<<< orphan*/  br; } ;
struct TYPE_5__ {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct TYPE_4__ {TYPE_3__* ifp; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static void
FUNC3(POCE_SOFTC sc, struct oce_wq *wq)
{

	if ((sc->ifp->if_drv_flags & IFF_DRV_RUNNING) != IFF_DRV_RUNNING)
		return;

#if __FreeBSD_version >= 800000
	if (!drbr_empty(sc->ifp, wq->br))
#else
	if (!FUNC0(&sc->ifp->if_snd))
#endif
		FUNC2(taskqueue_swi, &wq->txtask);

}