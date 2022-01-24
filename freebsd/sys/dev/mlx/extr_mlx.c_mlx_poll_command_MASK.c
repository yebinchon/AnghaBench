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
struct mlx_softc {int /*<<< orphan*/  mlx_dev; int /*<<< orphan*/  mlx_work; } ;
struct mlx_command {scalar_t__ mc_status; struct mlx_softc* mc_sc; int /*<<< orphan*/ * mc_private; int /*<<< orphan*/ * mc_complete; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 scalar_t__ MLX_STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mlx_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mc_link ; 
 int /*<<< orphan*/  FUNC4 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx_softc*,int) ; 
 int FUNC6 (struct mlx_command*) ; 

__attribute__((used)) static int
FUNC7(struct mlx_command *mc)
{
    struct mlx_softc	*sc = mc->mc_sc;
    int			error, count;

    FUNC2(1);
    FUNC0(sc);

    mc->mc_complete = NULL;
    mc->mc_private = NULL;	/* we will poll for it */
    if ((error = FUNC6(mc)) != 0)
	return(error);
    
    count = 0;
    do {
	/* poll for completion */
	FUNC5(mc->mc_sc, 1);
	
    } while ((mc->mc_status == MLX_STATUS_BUSY) && (count++ < 15000000));
    if (mc->mc_status != MLX_STATUS_BUSY) {
	FUNC1(&sc->mlx_work, mc, mc_link);
	return(0);
    }
    FUNC3(sc->mlx_dev, "command failed - %s\n", FUNC4(mc));
    return(EIO);
}