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
struct mlx_softc {int /*<<< orphan*/  (* mlx_intaction ) (struct mlx_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mlx_dev; int /*<<< orphan*/  mlx_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MLX_INTACTION_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 int /*<<< orphan*/  MLX_STATE_SUSPEND ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mlx_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx_softc*,int /*<<< orphan*/ ) ; 

int
FUNC8(device_t dev)
{
    struct mlx_softc	*sc = FUNC3(dev);

    FUNC2(1);

    FUNC0(sc);
    sc->mlx_state |= MLX_STATE_SUSPEND;
    
    /* flush controller */
    FUNC4(sc->mlx_dev, "flushing cache...");
    FUNC6("%s\n", FUNC5(sc) ? "failed" : "done");

    sc->mlx_intaction(sc, MLX_INTACTION_DISABLE);
    FUNC1(sc);

    return(0);
}