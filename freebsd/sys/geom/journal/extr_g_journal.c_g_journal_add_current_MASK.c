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
struct g_journal_softc {scalar_t__ sc_current_count; int /*<<< orphan*/  sc_current_queue; } ;
struct bio {int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*,scalar_t__) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_journal_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ g_journal_record_entries ; 

__attribute__((used)) static void
FUNC5(struct g_journal_softc *sc, struct bio *bp)
{
	int n;

	FUNC0(4, bp, "CURRENT %d", sc->sc_current_count);
	n = FUNC3(&sc->sc_current_queue, bp, M_WAITOK);
	sc->sc_current_count += n;
	n = FUNC4(sc->sc_current_queue);
	sc->sc_current_count += n;
	/*
	 * For requests which are added to the current queue we deliver
	 * response immediately.
	 */
	bp->bio_completed = bp->bio_length;
	FUNC1(bp, 0);
	if (sc->sc_current_count >= g_journal_record_entries) {
		/*
		 * Let's flush one record onto active journal provider.
		 */
		FUNC2(sc);
	}
}