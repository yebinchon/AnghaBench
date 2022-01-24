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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct mlx_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int FUNC1 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_softc*) ; 
 int /*<<< orphan*/  MLX_V5_IDB_SACK ; 
 int /*<<< orphan*/  MLX_V5_ODB_HWMBOX_ACK ; 
 int MLX_V5_ODB_HWSAVAIL ; 
 int /*<<< orphan*/  FUNC4 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct mlx_softc *sc, u_int8_t *slot, u_int16_t *status)
{

    FUNC6(2);
    FUNC0(sc);

    /* status available? */
    if (FUNC1(sc) & MLX_V5_ODB_HWSAVAIL) {
	*slot = FUNC3(sc);		/* get command identifier */
	*status = FUNC2(sc);		/* get status */

	/* acknowledge completion */
	FUNC5(sc, MLX_V5_ODB_HWMBOX_ACK);
	FUNC4(sc, MLX_V5_IDB_SACK);
	return(1);
    }
    return(0);
}