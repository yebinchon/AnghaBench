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
struct mlx_softc {int /*<<< orphan*/  mlx_state; } ;

/* Variables and functions */
#define  MLX_INTACTION_DISABLE 129 
#define  MLX_INTACTION_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  MLX_STATE_INTEN ; 
 int MLX_V4_IER_DISINT ; 
 int MLX_V4_IER_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct mlx_softc *sc, int action)
{
    FUNC2(1);
    FUNC0(sc);

    switch(action) {
    case MLX_INTACTION_DISABLE:
	FUNC1(sc, MLX_V4_IER_MASK | MLX_V4_IER_DISINT);
	sc->mlx_state &= ~MLX_STATE_INTEN;
	break;
    case MLX_INTACTION_ENABLE:
	FUNC1(sc, MLX_V4_IER_MASK & ~MLX_V4_IER_DISINT);
	sc->mlx_state |= MLX_STATE_INTEN;
	break;
    }
}