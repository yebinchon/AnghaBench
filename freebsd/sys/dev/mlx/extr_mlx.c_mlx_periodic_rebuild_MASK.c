#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx_rebuild_status {int /*<<< orphan*/  rs_code; } ;
struct mlx_softc {int mlx_background; struct mlx_rebuild_status mlx_rebuildstat; int /*<<< orphan*/  mlx_dev; } ;
struct mlx_command {int mc_status; scalar_t__ mc_data; struct mlx_softc* mc_sc; } ;

/* Variables and functions */
#define  MLX_BACKGROUND_CHECK 130 
#define  MLX_BACKGROUND_REBUILD 129 
#define  MLX_BACKGROUND_SPONTANEOUS 128 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  MLX_REBUILDSTAT_IDLE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_command*) ; 

__attribute__((used)) static void
FUNC4(struct mlx_command *mc)
{
    struct mlx_softc		*sc = mc->mc_sc;
    struct mlx_rebuild_status	*mr = (struct mlx_rebuild_status *)mc->mc_data;

    FUNC0(sc);
    switch(mc->mc_status) {
    case 0:				/* operation running, update stats */
	sc->mlx_rebuildstat = *mr;

	/* spontaneous rebuild/check? */
	if (sc->mlx_background == 0) {
	    sc->mlx_background = MLX_BACKGROUND_SPONTANEOUS;
	    FUNC1(sc->mlx_dev, "background check/rebuild operation started\n");
	}
	break;

    case 0x0105:			/* nothing running, finalise stats and report */
	switch(sc->mlx_background) {
	case MLX_BACKGROUND_CHECK:
	    FUNC1(sc->mlx_dev, "consistency check completed\n");	/* XXX print drive? */
	    break;
	case MLX_BACKGROUND_REBUILD:
	    FUNC1(sc->mlx_dev, "drive rebuild completed\n");	/* XXX print channel/target? */
	    break;
	case MLX_BACKGROUND_SPONTANEOUS:
	default:
	    /* if we have previously been non-idle, report the transition */
	    if (sc->mlx_rebuildstat.rs_code != MLX_REBUILDSTAT_IDLE) {
		FUNC1(sc->mlx_dev, "background check/rebuild operation completed\n");
	    }
	}
	sc->mlx_background = 0;
	sc->mlx_rebuildstat.rs_code = MLX_REBUILDSTAT_IDLE;
	break;
    }
    FUNC2(mc->mc_data, M_DEVBUF);
    FUNC3(mc);
}