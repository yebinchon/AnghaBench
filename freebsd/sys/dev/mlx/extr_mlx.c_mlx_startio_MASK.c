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
struct mlx_softc {int mlx_state; int /*<<< orphan*/  mlx_buffer_dmat; int /*<<< orphan*/  mlx_waitbufs; int /*<<< orphan*/  mlx_bioq; } ;
struct mlx_command {int /*<<< orphan*/  mc_length; int /*<<< orphan*/  mc_data; int /*<<< orphan*/  mc_dmamap; struct bio* mc_private; int /*<<< orphan*/  mc_complete; } ;
struct bio {int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_data; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int MLX_STATE_QFROZEN ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx_command*,int /*<<< orphan*/ ) ; 
 struct mlx_command* FUNC4 (struct mlx_softc*) ; 
 int /*<<< orphan*/  mlx_completeio ; 
 scalar_t__ FUNC5 (struct mlx_command*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx_command*) ; 
 int /*<<< orphan*/  mlx_startio_cb ; 

__attribute__((used)) static void
FUNC7(struct mlx_softc *sc)
{
    struct mlx_command	*mc;
    struct bio		*bp;
    int			error;

    FUNC0(sc);

    /* spin until something prevents us from doing any work */
    for (;;) {
	if (sc->mlx_state & MLX_STATE_QFROZEN)
	    break;

	/* see if there's work to be done */
	if ((bp = FUNC1(&sc->mlx_bioq)) == NULL)
	    break;
	/* get a command */
	if ((mc = FUNC4(sc)) == NULL)
	    break;
	/* get a slot for the command */
	if (FUNC5(mc) != 0) {
	    FUNC6(mc);
	    break;
	}
	/* get the buf containing our work */
	FUNC2(&sc->mlx_bioq, bp);
	sc->mlx_waitbufs--;
	
	/* connect the buf to the command */
	mc->mc_complete = mlx_completeio;
	mc->mc_private = bp;
	mc->mc_data = bp->bio_data;
	mc->mc_length = bp->bio_bcount;
	
	/* map the command so the controller can work with it */
	error = FUNC3(sc->mlx_buffer_dmat, mc->mc_dmamap, mc->mc_data,
				mc->mc_length, mlx_startio_cb, mc, 0);
	if (error == EINPROGRESS) {
	    sc->mlx_state |= MLX_STATE_QFROZEN;
	    break;
	}
    }
}