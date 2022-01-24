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
struct mlx_softc {int /*<<< orphan*/  mlx_dev; int /*<<< orphan*/ ** mlx_busycmd; int /*<<< orphan*/  mlx_work; scalar_t__ (* mlx_tryqueue ) (struct mlx_softc*,struct mlx_command*) ;} ;
struct mlx_command {size_t* mc_mailbox; size_t mc_slot; int /*<<< orphan*/  mc_status; scalar_t__ mc_timeout; struct mlx_softc* mc_sc; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MLX_STATUS_BUSY ; 
 int /*<<< orphan*/  MLX_STATUS_WEDGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mlx_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mc_link ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mlx_softc*,struct mlx_command*) ; 
 scalar_t__ time_second ; 

__attribute__((used)) static int
FUNC6(struct mlx_command *mc)
{
    struct mlx_softc	*sc = mc->mc_sc;
    int			i;

    FUNC1(1);

    /* save the slot number as ident so we can handle this command when complete */
    mc->mc_mailbox[0x1] = mc->mc_slot;

    /* mark the command as currently being processed */
    mc->mc_status = MLX_STATUS_BUSY;

    /* set a default 60-second timeout  XXX tunable?  XXX not currently used */
    mc->mc_timeout = time_second + 60;

    /* spin waiting for the mailbox */
    for (i = 100000; i > 0; i--) {
	if (sc->mlx_tryqueue(sc, mc)) {
	    /* move command to work queue */
	    FUNC0(&sc->mlx_work, mc, mc_link);
	    return (0);
	} else if (i > 1)
	    FUNC4(sc, 0);
    }

    /* 
     * We couldn't get the controller to take the command.  Revoke the slot
     * that the command was given and return it with a bad status.
     */
    sc->mlx_busycmd[mc->mc_slot] = NULL;
    FUNC2(sc->mlx_dev, "controller wedged (not taking commands)\n");
    mc->mc_status = MLX_STATUS_WEDGED;
    FUNC3(sc);
    return(EIO);
}