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
struct mlx_softc {int dummy; } ;
struct mlx_command {int /*<<< orphan*/ * mc_mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int FUNC1 (struct mlx_softc*) ; 
 int MLX_V3_IDB_FULL ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct mlx_softc *sc, struct mlx_command *mc)
{
    int		i;
    
    FUNC4(2);
    FUNC0(sc);

    /* ready for our command? */
    if (!(FUNC1(sc) & MLX_V3_IDB_FULL)) {
	/* copy mailbox data to window */
	for (i = 0; i < 13; i++)
	    FUNC3(sc, i, mc->mc_mailbox[i]);
	
	/* post command */
	FUNC2(sc, MLX_V3_IDB_FULL);
	return(1);
    }
    return(0);
}