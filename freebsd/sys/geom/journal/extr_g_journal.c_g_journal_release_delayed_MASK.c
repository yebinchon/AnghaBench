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
struct g_journal_softc {scalar_t__ sc_flush_count; int /*<<< orphan*/  sc_delayed_count; int /*<<< orphan*/  sc_delayed_queue; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ g_journal_accept_immediately ; 
 int /*<<< orphan*/  FUNC1 (struct g_journal_softc*,struct bio*) ; 

__attribute__((used)) static void
FUNC2(struct g_journal_softc *sc)
{
	struct bio *bp;

	for (;;) {
		/* The flush queue is full, exit. */
		if (sc->sc_flush_count >= g_journal_accept_immediately)
			return;
		bp = FUNC0(&sc->sc_delayed_queue);
		if (bp == NULL)
			return;
		sc->sc_delayed_count--;
		FUNC1(sc, bp);
	}
}