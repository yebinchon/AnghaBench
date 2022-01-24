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
struct TYPE_2__ {scalar_t__ mp_howlong; } ;
struct mlx_softc {int /*<<< orphan*/  mlx_dev; TYPE_1__ mlx_pause; } ;
struct mlx_command {int* mc_mailbox; scalar_t__ mc_status; struct mlx_softc* mc_sc; } ;

/* Variables and functions */
 int MLX_CMD_STOPCHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_command*) ; 
 scalar_t__ time_second ; 

__attribute__((used)) static void
FUNC4(struct mlx_command *mc)
{
    struct mlx_softc	*sc = mc->mc_sc;
    int			command = mc->mc_mailbox[0];
    int			channel = mc->mc_mailbox[2] & 0xf;

    FUNC0(sc);
    if (mc->mc_status != 0) {
	FUNC1(sc->mlx_dev, "%s command failed - %s\n", 
		      command == MLX_CMD_STOPCHANNEL ? "pause" : "resume", FUNC2(mc));
    } else if (command == MLX_CMD_STOPCHANNEL) {
	FUNC1(sc->mlx_dev, "channel %d pausing for %ld seconds\n", 
		      channel, (long)(sc->mlx_pause.mp_howlong - time_second));
    } else {
	FUNC1(sc->mlx_dev, "channel %d resuming\n", channel);
    }
    FUNC3(mc);
}