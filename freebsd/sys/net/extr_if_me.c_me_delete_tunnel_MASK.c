#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct me_softc {TYPE_2__ me_dst; TYPE_1__ me_src; } ;
struct TYPE_7__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct me_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 TYPE_3__* FUNC1 (struct me_softc*) ; 
 scalar_t__ FUNC2 (struct me_softc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  me_ioctl_sx ; 
 int /*<<< orphan*/  srchash ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct me_softc *sc)
{

	FUNC5(&me_ioctl_sx, SA_XLOCKED);
	if (FUNC2(sc)) {
		FUNC0(sc, chain);
		FUNC0(sc, srchash);
		FUNC3();

		sc->me_src.s_addr = 0;
		sc->me_dst.s_addr = 0;
		FUNC1(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC4(FUNC1(sc), LINK_STATE_DOWN);
	}
}