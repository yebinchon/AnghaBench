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
struct g_uzip_softc {int wrkthr_flags; int /*<<< orphan*/  (* uzip_do ) (struct g_uzip_softc*,struct bio*) ;int /*<<< orphan*/  queue_mtx; int /*<<< orphan*/  bio_queue; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int GUZ_EXITING ; 
 int GUZ_SHUTDOWN ; 
 int PDROP ; 
 int PRIBIO ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_uzip_softc*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct g_uzip_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(void *arg)
{
	struct g_uzip_softc *sc;
	struct bio *bp;

	sc = (struct g_uzip_softc *)arg;
	FUNC7(curthread);
	FUNC5(curthread, PRIBIO);
	FUNC8(curthread);

	for (;;) {
		FUNC3(&sc->queue_mtx);
		if (sc->wrkthr_flags & GUZ_SHUTDOWN) {
			sc->wrkthr_flags |= GUZ_EXITING;
			FUNC4(&sc->queue_mtx);
			FUNC1(0);
		}
		bp = FUNC0(&sc->bio_queue);
		if (!bp) {
			FUNC2(sc, &sc->queue_mtx, PRIBIO | PDROP,
			    "wrkwait", 0);
			continue;
		}
		FUNC4(&sc->queue_mtx);
		sc->uzip_do(sc, bp);
	}
}