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
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct g_journal_softc {scalar_t__ sc_delayed_count; scalar_t__ sc_flush_count; TYPE_1__ sc_delayed_queue; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct bio*) ; 
 scalar_t__ g_journal_accept_immediately ; 
 int /*<<< orphan*/  FUNC4 (struct g_journal_softc*,struct bio*) ; 

__attribute__((used)) static void
FUNC5(struct g_journal_softc *sc, struct bio *bp)
{

	/*
	 * The flush queue is full, we need to delay the request.
	 */
	if (sc->sc_delayed_count > 0 ||
	    sc->sc_flush_count >= g_journal_accept_immediately) {
		FUNC0(4, bp, "DELAYED");
		FUNC3(&sc->sc_delayed_queue, bp);
		sc->sc_delayed_count++;
		return;
	}

	FUNC1(FUNC2(&sc->sc_delayed_queue.queue),
	    ("DELAYED queue not empty."));
	FUNC4(sc, bp);
}