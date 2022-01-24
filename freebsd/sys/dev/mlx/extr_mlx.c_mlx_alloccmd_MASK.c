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
struct mlx_softc {int /*<<< orphan*/  mlx_buffer_dmat; int /*<<< orphan*/  mlx_freecmds; } ;
struct mlx_command {int /*<<< orphan*/  mc_dmamap; struct mlx_softc* mc_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct mlx_command* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mlx_command*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx_command*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mc_link ; 

__attribute__((used)) static struct mlx_command *
FUNC7(struct mlx_softc *sc)
{
    struct mlx_command	*mc;
    int			error;

    FUNC4(1);

    FUNC0(sc);
    if ((mc = FUNC1(&sc->mlx_freecmds)) != NULL)
	FUNC2(&sc->mlx_freecmds, mc, mc_link);

    /* allocate a new command buffer? */
    if (mc == NULL) {
	mc = (struct mlx_command *)FUNC6(sizeof(*mc), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (mc != NULL) {
	    mc->mc_sc = sc;
	    error = FUNC3(sc->mlx_buffer_dmat, 0, &mc->mc_dmamap);
	    if (error) {
		FUNC5(mc, M_DEVBUF);
		return(NULL);
	    }
	}
    }
    return(mc);
}