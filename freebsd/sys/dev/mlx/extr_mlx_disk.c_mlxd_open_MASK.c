#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlxd_softc {TYPE_1__* mlxd_controller; int /*<<< orphan*/  mlxd_flags; } ;
struct disk {scalar_t__ d_drv1; } ;
struct TYPE_5__ {int mlx_state; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MLXD_OPEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int MLX_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct disk *dp)
{
    struct mlxd_softc	*sc = (struct mlxd_softc *)dp->d_drv1;

    FUNC4(1);
	
    if (sc == NULL)
	return (ENXIO);

    /* controller not active? */
    FUNC0(sc->mlxd_controller);
    FUNC2(sc->mlxd_controller);
    if (sc->mlxd_controller->mlx_state & MLX_STATE_SHUTDOWN) {
	FUNC3(sc->mlxd_controller);
	FUNC1(sc->mlxd_controller);
	return(ENXIO);
    }

    sc->mlxd_flags |= MLXD_OPEN;
    FUNC3(sc->mlxd_controller);
    FUNC1(sc->mlxd_controller);
    return (0);
}