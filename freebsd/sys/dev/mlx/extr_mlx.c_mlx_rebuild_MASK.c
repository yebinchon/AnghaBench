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
struct mlx_command {int mc_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX_CMD_REBUILDASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct mlx_command* FUNC3 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx_command*) ; 
 scalar_t__ FUNC5 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx_command*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx_command*) ; 
 scalar_t__ FUNC8 (struct mlx_command*) ; 

__attribute__((used)) static int
FUNC9(struct mlx_softc *sc, int channel, int target)
{
    struct mlx_command	*mc;
    int			error;

    FUNC1(1);
    FUNC0(sc);

    /* get ourselves a command buffer */
    error = 0x10000;
    if ((mc = FUNC3(sc)) == NULL)
	goto out;
    /* get a command slot */
    if (FUNC5(mc))
	goto out;

    /* build a checkasync command, set the "fix it" flag */
    FUNC6(mc, MLX_CMD_REBUILDASYNC, channel, target, 0, 0, 0, 0, 0, 0);

    /* start the command and wait for it to be returned */
    if (FUNC8(mc))
	goto out;
    
    /* command completed OK? */
    if (mc->mc_status != 0) {	
	FUNC2(sc->mlx_dev, "REBUILD ASYNC failed - %s\n", FUNC4(mc));
    } else {
	FUNC2(sc->mlx_dev, "drive rebuild started for %d:%d\n", channel, target);
    }
    error = mc->mc_status;

 out:
    if (mc != NULL)
	FUNC7(mc);
    return(error);
}