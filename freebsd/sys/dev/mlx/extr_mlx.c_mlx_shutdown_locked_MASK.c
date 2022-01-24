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
struct mlx_softc {TYPE_1__* mlx_sysdrive; int /*<<< orphan*/  mlx_dev; int /*<<< orphan*/  (* mlx_intaction ) (struct mlx_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mlx_state; } ;
struct TYPE_2__ {scalar_t__ ms_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  MLX_INTACTION_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_softc*) ; 
 int MLX_MAXDRIVES ; 
 int /*<<< orphan*/  MLX_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct mlx_softc *sc)
{
    int			i, error;

    FUNC3(1);

    FUNC0(sc);

    FUNC1(sc);
    sc->mlx_state |= MLX_STATE_SHUTDOWN;
    sc->mlx_intaction(sc, MLX_INTACTION_DISABLE);

    /* flush controller */
    FUNC5(sc->mlx_dev, "flushing cache...");
    if (FUNC6(sc)) {
	FUNC7("failed\n");
    } else {
	FUNC7("done\n");
    }
    FUNC2(sc);
    
    /* delete all our child devices */
    for (i = 0; i < MLX_MAXDRIVES; i++) {
	if (sc->mlx_sysdrive[i].ms_disk != 0) {
	    if ((error = FUNC4(sc->mlx_dev, sc->mlx_sysdrive[i].ms_disk)) != 0)
		return (error);
	    sc->mlx_sysdrive[i].ms_disk = 0;
	}
    }

    return (0);
}