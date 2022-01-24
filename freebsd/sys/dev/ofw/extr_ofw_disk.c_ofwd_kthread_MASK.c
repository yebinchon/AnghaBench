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
struct ofwd_softc {int /*<<< orphan*/  ofwd_queue_mtx; int /*<<< orphan*/  ofwd_bio_queue; } ;
struct bio {scalar_t__ bio_cmd; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_completed; } ;
struct TYPE_2__ {int td_base_pri; } ;

/* Variables and functions */
 scalar_t__ BIO_GETATTR ; 
 int EOPNOTSUPP ; 
 int PDROP ; 
 int PRIBIO ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ofwd_softc*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ofwd_softc*,struct bio*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct ofwd_softc *sc;
	struct bio *bp;
	int error;

	sc = arg;
	curthread->td_base_pri = PRIBIO;

	for (;;) {
		FUNC3(&sc->ofwd_queue_mtx);
		bp = FUNC0(&sc->ofwd_bio_queue);
		if (!bp) {
			FUNC2(sc, &sc->ofwd_queue_mtx, PRIBIO | PDROP,
			    "ofwdwait", 0);
			continue;
		}
		FUNC4(&sc->ofwd_queue_mtx);
		if (bp->bio_cmd == BIO_GETATTR) {
			error = EOPNOTSUPP;
		} else
			error = FUNC5(sc, bp);

		if (error != -1) {
			bp->bio_completed = bp->bio_length;
			FUNC1(bp, error);
		}
	}
}