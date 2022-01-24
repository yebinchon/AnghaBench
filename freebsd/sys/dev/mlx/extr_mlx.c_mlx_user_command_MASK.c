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
typedef  int /*<<< orphan*/  u_int32_t ;
struct mlx_usercommand {int mu_bufptr; int /*<<< orphan*/  mu_datasize; int /*<<< orphan*/  mu_buf; int /*<<< orphan*/  mu_status; int /*<<< orphan*/  mu_command; } ;
struct mlx_softc {int /*<<< orphan*/  mlx_buffer_dmat; } ;
struct mlx_command {int /*<<< orphan*/  mc_status; int /*<<< orphan*/  mc_length; void* mc_data; int /*<<< orphan*/  mc_dmamap; struct mlx_usercommand* mc_private; int /*<<< orphan*/  mc_mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 int /*<<< orphan*/  MLX_MAXPHYS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx_command*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx_command* FUNC10 (struct mlx_softc*) ; 
 scalar_t__ FUNC11 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx_command*) ; 
 int /*<<< orphan*/  mlx_user_cb ; 

__attribute__((used)) static int
FUNC13(struct mlx_softc *sc, struct mlx_usercommand *mu)
{
    struct mlx_command	*mc;
    void		*kbuf;
    int			error;
    
    FUNC7(0);
    
    kbuf = NULL;
    mc = NULL;
    error = ENOMEM;

    /* get ourselves a command and copy in from user space */
    FUNC0(sc);
    if ((mc = FUNC10(sc)) == NULL) {
	FUNC1(sc);
	return(error);
    }
    FUNC2(mu->mu_command, mc->mc_mailbox, sizeof(mc->mc_mailbox));
    FUNC6(0, "got command buffer");

    /*
     * if we need a buffer for data transfer, allocate one and copy in its
     * initial contents
     */
    if (mu->mu_datasize > 0) {
	if (mu->mu_datasize > MLX_MAXPHYS) {
	    error = EINVAL;
	    goto out;
	}
	FUNC1(sc);
	if (((kbuf = FUNC9(mu->mu_datasize, M_DEVBUF, M_WAITOK)) == NULL) ||
	    (error = FUNC4(mu->mu_buf, kbuf, mu->mu_datasize))) {
	    FUNC0(sc);
	    goto out;
	}
	FUNC0(sc);
	FUNC6(0, "got kernel buffer");
    }

    /* get a command slot */
    if (FUNC11(mc))
	goto out;
    FUNC6(0, "got a slot");

    if (mu->mu_datasize > 0) {

	/* range check the pointer to physical buffer address */
	if ((mu->mu_bufptr < 0) || (mu->mu_bufptr > (sizeof(mu->mu_command) -
						     sizeof(u_int32_t)))) {
	    error = EINVAL;
	    goto out;
	}
    }

    /* map the command so the controller can see it */
    mc->mc_data = kbuf;
    mc->mc_length = mu->mu_datasize;
    mc->mc_private = mu;
    error = FUNC3(sc->mlx_buffer_dmat, mc->mc_dmamap, mc->mc_data,
			    mc->mc_length, mlx_user_cb, mc, BUS_DMA_NOWAIT);
    if (error)
	goto out;

    /* copy out status and data */
    mu->mu_status = mc->mc_status;
    if (mu->mu_datasize > 0) {
	FUNC1(sc);
	error = FUNC5(kbuf, mu->mu_buf, mu->mu_datasize);
	FUNC0(sc);
    }

 out:
    FUNC12(mc);
    FUNC1(sc);
    if (kbuf != NULL)
	FUNC8(kbuf, M_DEVBUF);
    return(error);
}