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
struct thread {int dummy; } ;
struct mlx_softc {int /*<<< orphan*/  mlx_state; } ;
struct cdev {struct mlx_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_softc*) ; 
 int /*<<< orphan*/  MLX_STATE_OPEN ; 

int
FUNC4(struct cdev *dev, int flags, int fmt, struct thread *td)
{
    struct mlx_softc	*sc = dev->si_drv1;

    FUNC0(sc);
    FUNC2(sc);
    sc->mlx_state |= MLX_STATE_OPEN;
    FUNC3(sc);
    FUNC1(sc);
    return(0);
}