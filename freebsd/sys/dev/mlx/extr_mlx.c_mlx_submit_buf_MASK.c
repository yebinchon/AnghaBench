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
struct mlx_softc {int /*<<< orphan*/  mlx_waitbufs; int /*<<< orphan*/  mlx_bioq; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_softc*) ; 

int
FUNC4(struct mlx_softc *sc, struct bio *bp)
{
    
    FUNC2(1);

    FUNC0(sc);
    FUNC1(&sc->mlx_bioq, bp);
    sc->mlx_waitbufs++;
    FUNC3(sc);
    return(0);
}