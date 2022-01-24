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
struct mlx_softc {int /*<<< orphan*/  mlx_dev; int /*<<< orphan*/  mlx_io_lock; } ;
struct mlx_command {scalar_t__ mc_status; struct mlx_command* mc_private; int /*<<< orphan*/ * mc_complete; struct mlx_softc* mc_sc; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 scalar_t__ MLX_STATUS_BUSY ; 
 int PCATCH ; 
 int PRIBIO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_command*) ; 
 int FUNC4 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx_command*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mlx_command *mc)
{
    struct mlx_softc	*sc = mc->mc_sc;
    int			error, count;

    FUNC1(1);
    FUNC0(sc);

    mc->mc_complete = NULL;
    mc->mc_private = mc;		/* wake us when you're done */
    if ((error = FUNC4(mc)) != 0)
	return(error);

    count = 0;
    /* XXX better timeout? */
    while ((mc->mc_status == MLX_STATUS_BUSY) && (count < 30)) {
	FUNC5(mc->mc_private, &sc->mlx_io_lock, PRIBIO | PCATCH, "mlxwcmd", hz);
    }

    if (mc->mc_status != 0) {
	FUNC2(sc->mlx_dev, "command failed - %s\n", FUNC3(mc));
	return(EIO);
    }
    return(0);
}