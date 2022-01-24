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
struct mlx_softc {int /*<<< orphan*/  mlx_buffer_dmat; } ;
struct mlx_command {int mc_flags; size_t mc_length; int mc_command; void (* mc_complete ) (struct mlx_command*) ;void* mc_data; int /*<<< orphan*/  mc_dmamap; struct mlx_command* mc_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int MLX_CMD_DATAOUT ; 
 int MLX_CMD_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,struct mlx_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx_command* FUNC5 (struct mlx_softc*) ; 
 int /*<<< orphan*/  mlx_enquire_cb ; 
 scalar_t__ FUNC6 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx_command*) ; 

__attribute__((used)) static void *
FUNC8(struct mlx_softc *sc, int command, size_t bufsize, void (* complete)(struct mlx_command *mc))
{
    struct mlx_command	*mc;
    void		*result;
    int			error;

    FUNC2(1);
    FUNC0(sc);

    /* get ourselves a command buffer */
    error = 1;
    result = NULL;
    if ((mc = FUNC5(sc)) == NULL)
	goto out;
    /* allocate the response structure */
    if ((result = FUNC4(bufsize, M_DEVBUF, M_NOWAIT)) == NULL)
	goto out;
    /* get a command slot */
    mc->mc_flags |= MLX_CMD_PRIORITY | MLX_CMD_DATAOUT;
    if (FUNC6(mc))
	goto out;

    /* map the command so the controller can see it */
    mc->mc_data = result;
    mc->mc_length = bufsize;
    mc->mc_command = command;

    if (complete != NULL) {
	mc->mc_complete = complete;
	mc->mc_private = mc;
    }

    error = FUNC1(sc->mlx_buffer_dmat, mc->mc_dmamap, mc->mc_data,
			    mc->mc_length, mlx_enquire_cb, mc, BUS_DMA_NOWAIT);

 out:
    /* we got a command, but nobody else will free it */
    if ((mc != NULL) && (mc->mc_complete == NULL))
	FUNC7(mc);
    /* we got an error, and we allocated a result */
    if ((error != 0) && (result != NULL)) {
	FUNC3(result, M_DEVBUF);
	result = NULL;
    }
    return(result);
}