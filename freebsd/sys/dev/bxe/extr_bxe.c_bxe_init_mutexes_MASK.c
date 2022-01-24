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
struct TYPE_2__ {int /*<<< orphan*/  phy_mtx_name; int /*<<< orphan*/  phy_mtx; } ;
struct bxe_softc {int unit; int /*<<< orphan*/  mcast_mtx_name; int /*<<< orphan*/  mcast_mtx; int /*<<< orphan*/  stats_mtx_name; int /*<<< orphan*/  stats_mtx; int /*<<< orphan*/  print_mtx_name; int /*<<< orphan*/  print_mtx; int /*<<< orphan*/  fwmb_mtx_name; int /*<<< orphan*/  fwmb_mtx; TYPE_1__ port; int /*<<< orphan*/  dmae_mtx_name; int /*<<< orphan*/  dmae_mtx; int /*<<< orphan*/  sp_mtx_name; int /*<<< orphan*/  sp_mtx; int /*<<< orphan*/  core_mtx_name; int /*<<< orphan*/  core_mtx; int /*<<< orphan*/  core_sx_name; int /*<<< orphan*/  core_sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bxe_softc *sc)
{
#ifdef BXE_CORE_LOCK_SX
    snprintf(sc->core_sx_name, sizeof(sc->core_sx_name),
             "bxe%d_core_lock", sc->unit);
    sx_init(&sc->core_sx, sc->core_sx_name);
#else
    FUNC1(sc->core_mtx_name, sizeof(sc->core_mtx_name),
             "bxe%d_core_lock", sc->unit);
    FUNC0(&sc->core_mtx, sc->core_mtx_name, NULL, MTX_DEF);
#endif

    FUNC1(sc->sp_mtx_name, sizeof(sc->sp_mtx_name),
             "bxe%d_sp_lock", sc->unit);
    FUNC0(&sc->sp_mtx, sc->sp_mtx_name, NULL, MTX_DEF);

    FUNC1(sc->dmae_mtx_name, sizeof(sc->dmae_mtx_name),
             "bxe%d_dmae_lock", sc->unit);
    FUNC0(&sc->dmae_mtx, sc->dmae_mtx_name, NULL, MTX_DEF);

    FUNC1(sc->port.phy_mtx_name, sizeof(sc->port.phy_mtx_name),
             "bxe%d_phy_lock", sc->unit);
    FUNC0(&sc->port.phy_mtx, sc->port.phy_mtx_name, NULL, MTX_DEF);

    FUNC1(sc->fwmb_mtx_name, sizeof(sc->fwmb_mtx_name),
             "bxe%d_fwmb_lock", sc->unit);
    FUNC0(&sc->fwmb_mtx, sc->fwmb_mtx_name, NULL, MTX_DEF);

    FUNC1(sc->print_mtx_name, sizeof(sc->print_mtx_name),
             "bxe%d_print_lock", sc->unit);
    FUNC0(&(sc->print_mtx), sc->print_mtx_name, NULL, MTX_DEF);

    FUNC1(sc->stats_mtx_name, sizeof(sc->stats_mtx_name),
             "bxe%d_stats_lock", sc->unit);
    FUNC0(&(sc->stats_mtx), sc->stats_mtx_name, NULL, MTX_DEF);

    FUNC1(sc->mcast_mtx_name, sizeof(sc->mcast_mtx_name),
             "bxe%d_mcast_lock", sc->unit);
    FUNC0(&(sc->mcast_mtx), sc->mcast_mtx_name, NULL, MTX_DEF);
}