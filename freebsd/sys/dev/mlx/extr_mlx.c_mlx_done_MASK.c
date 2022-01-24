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
typedef  size_t u_int8_t ;
typedef  scalar_t__ u_int16_t ;
struct mlx_softc {int /*<<< orphan*/  mlx_dev; int /*<<< orphan*/  mlx_busycmds; struct mlx_command** mlx_busycmd; scalar_t__ (* mlx_findcomplete ) (struct mlx_softc*,size_t*,scalar_t__*) ;} ;
struct mlx_command {scalar_t__ mc_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 scalar_t__ MLX_STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx_softc*) ; 
 scalar_t__ FUNC5 (struct mlx_softc*,size_t*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC6(struct mlx_softc *sc, int startio)
{
    struct mlx_command	*mc;
    int			result;
    u_int8_t		slot;
    u_int16_t		status;
    
    FUNC1(2);
    FUNC0(sc);

    result = 0;

    /* loop collecting completed commands */
    for (;;) {
	/* poll for a completed command's identifier and status */
	if (sc->mlx_findcomplete(sc, &slot, &status)) {
	    result = 1;
	    mc = sc->mlx_busycmd[slot];			/* find command */
	    if (mc != NULL) {				/* paranoia */
		if (mc->mc_status == MLX_STATUS_BUSY) {
		    mc->mc_status = status;		/* save status */

		    /* free slot for reuse */
		    sc->mlx_busycmd[slot] = NULL;
		    sc->mlx_busycmds--;
		} else {
		    FUNC2(sc->mlx_dev, "duplicate done event for slot %d\n", slot);
		}
	    } else {
		FUNC2(sc->mlx_dev, "done event for nonbusy slot %d\n", slot);
	    }
	} else {
	    break;
	}
    }

    /* if we've completed any commands, try posting some more */
    if (result && startio)
	FUNC4(sc);

    /* handle completion and timeouts */
    FUNC3(sc);

    return(result);
}