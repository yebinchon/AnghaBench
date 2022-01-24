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
struct mlx_softc {int /*<<< orphan*/  mlx_dev; } ;
struct mlx_command {scalar_t__ mc_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX_CMD_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct mlx_command* FUNC3 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx_command*) ; 
 scalar_t__ FUNC5 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx_command*) ; 

__attribute__((used)) static int
FUNC9(struct mlx_softc *sc)
{
    struct mlx_command	*mc;
    int			error;

    FUNC1(1);
    FUNC0(sc);

    /* get ourselves a command buffer */
    error = 1;
    if ((mc = FUNC3(sc)) == NULL)
	goto out;
    /* get a command slot */
    if (FUNC5(mc))
	goto out;

    /* build a flush command */
    FUNC6(mc, MLX_CMD_FLUSH, 0, 0, 0, 0, 0, 0, 0, 0);

    /* can't assume that interrupts are going to work here, so play it safe */
    if (FUNC7(mc))
	goto out;
    
    /* command completed OK? */
    if (mc->mc_status != 0) {
	FUNC2(sc->mlx_dev, "FLUSH failed - %s\n", FUNC4(mc));
	goto out;
    }
    
    error = 0;			/* success */
 out:
    if (mc != NULL)
	FUNC8(mc);
    return(error);
}