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
struct gre_softc {scalar_t__ gre_family; struct gre_softc* gre_so; int /*<<< orphan*/  epoch_ctx; int /*<<< orphan*/  so; int /*<<< orphan*/  list; int /*<<< orphan*/  gre_hdr; } ;
struct gre_socket {scalar_t__ gre_family; struct gre_socket* gre_so; int /*<<< orphan*/  epoch_ctx; int /*<<< orphan*/  so; int /*<<< orphan*/  list; int /*<<< orphan*/  gre_hdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gre_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct gre_softc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  M_GRE ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gre_ioctl_sx ; 
 int /*<<< orphan*/  gre_sofree ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_epoch_preempt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srchash ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct gre_softc *sc)
{
	struct gre_socket *gs;

	FUNC8(&gre_ioctl_sx, SA_XLOCKED);
	if (sc->gre_family != 0) {
		FUNC1(sc, chain);
		FUNC1(sc, srchash);
		FUNC3();
		FUNC5(sc->gre_hdr, M_GRE);
		sc->gre_family = 0;
	}
	/*
	 * If this Tunnel was the last one that could use UDP socket,
	 * we should unlink socket from hash table and close it.
	 */
	if ((gs = sc->gre_so) != NULL && FUNC0(&gs->list)) {
		FUNC1(gs, chain);
		FUNC7(gs->so);
		FUNC4(net_epoch_preempt, &gs->epoch_ctx, gre_sofree);
		sc->gre_so = NULL;
	}
	FUNC2(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC6(FUNC2(sc), LINK_STATE_DOWN);
}