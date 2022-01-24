#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_spa {int /*<<< orphan*/  spa_g_mtx; int /*<<< orphan*/  spa_g_queue; int /*<<< orphan*/  spa_g_stat_mtx; int /*<<< orphan*/  spa_g_devstat; } ;
struct bio {scalar_t__ bio_cmd; TYPE_2__* bio_to; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_spa* softc; } ;

/* Variables and functions */
 scalar_t__ BIO_READ ; 
 scalar_t__ BIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bio *bp)
{
	struct g_spa *sc;

	sc = bp->bio_to->geom->softc;
	if (bp->bio_cmd == BIO_READ || bp->bio_cmd == BIO_WRITE) {
		FUNC2(&sc->spa_g_stat_mtx);
		FUNC1(sc->spa_g_devstat, bp);
		FUNC3(&sc->spa_g_stat_mtx);
	}
	FUNC2(&sc->spa_g_mtx);
	FUNC0(&sc->spa_g_queue, bp);
	FUNC4(&sc->spa_g_queue);
	FUNC3(&sc->spa_g_mtx);
}