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
struct mlxd_softc {int mlxd_flags; } ;
struct mlx_softc {int mlx_state; TYPE_1__* mlx_sysdrive; } ;
typedef  scalar_t__ device_t ;
struct TYPE_2__ {scalar_t__ ms_disk; } ;

/* Variables and functions */
 int EBUSY ; 
 int MLXD_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 int MLX_MAXDRIVES ; 
 int MLX_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx_softc*) ; 
 int FUNC6 (scalar_t__) ; 

int
FUNC7(device_t dev)
{
    struct mlx_softc	*sc = FUNC3(dev);
    struct mlxd_softc	*mlxd;
    int			i, error;

    FUNC2(1);

    error = EBUSY;
    FUNC0(sc);
    if (sc->mlx_state & MLX_STATE_OPEN)
	goto out;

    for (i = 0; i < MLX_MAXDRIVES; i++) {
	if (sc->mlx_sysdrive[i].ms_disk != 0) {
	    mlxd = FUNC3(sc->mlx_sysdrive[i].ms_disk);
	    if (mlxd->mlxd_flags & MLXD_OPEN) {		/* drive is mounted, abort detach */
		FUNC4(sc->mlx_sysdrive[i].ms_disk, "still open, can't detach\n");
		goto out;
	    }
	}
    }
    if ((error = FUNC6(dev)))
	goto out;
    FUNC1(sc);

    FUNC5(sc);

    return (0);
 out:
    FUNC1(sc);
    return(error);
}