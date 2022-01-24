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
typedef  int u_int8_t ;
struct mlx_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MLX_V4_FWERROR_PEND ; 
 int FUNC1 (struct mlx_softc*) ; 
 int FUNC2 (struct mlx_softc*) ; 
 int FUNC3 (struct mlx_softc*) ; 
 int FUNC4 (struct mlx_softc*) ; 
 int MLX_V4_IDB_INIT_BUSY ; 
 int /*<<< orphan*/  MLX_V4_IDB_SACK ; 
 int /*<<< orphan*/  FUNC5 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int 
FUNC8(struct mlx_softc *sc, int *error, int *param1, int *param2,
    int first)
{
    u_int8_t	fwerror;

    FUNC7(2);

    /* first time around, clear any hardware completion status */
    if (first) {
	FUNC6(sc, MLX_V4_IDB_SACK);
	FUNC0(1000);
    }

    /* init in progress? */
    if (!(FUNC4(sc) & MLX_V4_IDB_INIT_BUSY))
	return(0);

    /* test error value */
    fwerror = FUNC1(sc);
    if (!(fwerror & MLX_V4_FWERROR_PEND))
	return(1);

    /* mask status pending bit, fetch status */
    *error = fwerror & ~MLX_V4_FWERROR_PEND;
    *param1 = FUNC2(sc);
    *param2 = FUNC3(sc);

    /* acknowledge */
    FUNC5(sc, 0);

    return(2);
}