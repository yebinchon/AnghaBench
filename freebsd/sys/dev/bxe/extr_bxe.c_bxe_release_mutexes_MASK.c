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
struct TYPE_2__ {int /*<<< orphan*/  phy_mtx; } ;
struct bxe_softc {int /*<<< orphan*/  mcast_mtx; int /*<<< orphan*/  stats_mtx; int /*<<< orphan*/  print_mtx; int /*<<< orphan*/  fwmb_mtx; TYPE_1__ port; int /*<<< orphan*/  dmae_mtx; int /*<<< orphan*/  sp_mtx; int /*<<< orphan*/  core_mtx; int /*<<< orphan*/  core_sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct bxe_softc *sc)
{
#ifdef BXE_CORE_LOCK_SX
    sx_destroy(&sc->core_sx);
#else
    if (FUNC1(&sc->core_mtx)) {
        FUNC0(&sc->core_mtx);
    }
#endif

    if (FUNC1(&sc->sp_mtx)) {
        FUNC0(&sc->sp_mtx);
    }

    if (FUNC1(&sc->dmae_mtx)) {
        FUNC0(&sc->dmae_mtx);
    }

    if (FUNC1(&sc->port.phy_mtx)) {
        FUNC0(&sc->port.phy_mtx);
    }

    if (FUNC1(&sc->fwmb_mtx)) {
        FUNC0(&sc->fwmb_mtx);
    }

    if (FUNC1(&sc->print_mtx)) {
        FUNC0(&sc->print_mtx);
    }

    if (FUNC1(&sc->stats_mtx)) {
        FUNC0(&sc->stats_mtx);
    }

    if (FUNC1(&sc->mcast_mtx)) {
        FUNC0(&sc->mcast_mtx);
    }
}