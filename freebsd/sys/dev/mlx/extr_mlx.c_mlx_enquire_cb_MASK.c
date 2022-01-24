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
struct mlx_softc {int mlx_state; int /*<<< orphan*/  mlx_dev; } ;
struct mlx_command {scalar_t__ mc_status; int /*<<< orphan*/ * mc_complete; int /*<<< orphan*/  mc_dataphys; int /*<<< orphan*/  mc_command; struct mlx_softc* mc_sc; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int MLX_STATE_INTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx_command*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (struct mlx_command*) ; 
 scalar_t__ FUNC6 (struct mlx_command*) ; 

__attribute__((used)) static void
FUNC7(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
    struct mlx_softc *sc;
    struct mlx_command *mc;

    mc = (struct mlx_command *)arg;
    if (error)
	return;

    FUNC4(mc, segs, nsegments, error);

    /* build an enquiry command */
    sc = mc->mc_sc;
    FUNC2(mc, mc->mc_command, 0, 0, 0, 0, 0, 0, mc->mc_dataphys, 0);

    /* do we want a completion callback? */
    if (mc->mc_complete != NULL) {
	if ((error = FUNC5(mc)) != 0)
	    return;
    } else {
	/* run the command in either polled or wait mode */
	if ((sc->mlx_state & MLX_STATE_INTEN) ? FUNC6(mc) :
						FUNC3(mc))
	    return;
    
	/* command completed OK? */
	if (mc->mc_status != 0) {
	    FUNC0(sc->mlx_dev, "ENQUIRY failed - %s\n",
			  FUNC1(mc));
	    return;
	}
    }
}