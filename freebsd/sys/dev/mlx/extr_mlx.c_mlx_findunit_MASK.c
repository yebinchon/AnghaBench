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
struct mlx_sysdrive {scalar_t__ ms_disk; } ;
struct mlx_softc {struct mlx_sysdrive* mlx_sysdrive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int MLX_MAXDRIVES ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static struct mlx_sysdrive *
FUNC2(struct mlx_softc *sc, int unit)
{
    int		i;
    
    /* search system drives */
    FUNC0(sc);
    for (i = 0; i < MLX_MAXDRIVES; i++) {
	/* is this one attached? */
	if (sc->mlx_sysdrive[i].ms_disk != 0) {
	    /* is this the one? */
	    if (unit == FUNC1(sc->mlx_sysdrive[i].ms_disk))
		return(&sc->mlx_sysdrive[i]);
	}
    }
    return(NULL);
}