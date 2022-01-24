#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx_command {int /*<<< orphan*/ * mc_data; struct mlx_command* mc_private; int /*<<< orphan*/  mc_complete; int /*<<< orphan*/  mc_dataphys; TYPE_1__* mc_sc; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
struct TYPE_2__ {int /*<<< orphan*/  mlx_lastevent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX_CMD_LOGOP ; 
 int /*<<< orphan*/  MLX_LOGOP_GET ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx_periodic_eventlog_respond ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_command*,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (struct mlx_command*) ; 

__attribute__((used)) static void
FUNC5(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
    struct mlx_command *mc;

    mc = (struct mlx_command *)arg;
    FUNC3(mc, segs, nsegments, error);

    /* build the command to get one entry */
    FUNC1(mc, MLX_CMD_LOGOP, MLX_LOGOP_GET, 1,
		   mc->mc_sc->mlx_lastevent, 0, 0, mc->mc_dataphys, 0);
    mc->mc_complete = mlx_periodic_eventlog_respond;
    mc->mc_private = mc;

    /* start the command */
    if (FUNC4(mc) != 0) {
	FUNC2(mc);
	FUNC0(mc->mc_data, M_DEVBUF);
	mc->mc_data = NULL;
    }
    
}