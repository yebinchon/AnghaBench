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
struct g_delay_softc {int /*<<< orphan*/  sc_bioq; } ;
struct bio {int /*<<< orphan*/  bio_t0; struct g_delay_softc* bio_caller1; } ;
struct TYPE_2__ {int latency; scalar_t__ bypass; } ;

/* Variables and functions */
 int BTFRAC_1US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ me ; 

__attribute__((used)) static int
FUNC3(void *data, struct bio *bp)
{
	struct g_delay_softc *sc = data;

	if (me.bypass)
		return (-1);	/* bypass the scheduler */

	bp->bio_caller1 = sc;
	FUNC2(&bp->bio_t0);	/* BIO's bio_t0 is uptime */
	FUNC0(&bp->bio_t0, BTFRAC_1US * me.latency);

	/*
	 * Keep the I/Os ordered. Lower layers will reorder as we release them down.
	 * We rely on this in g_delay_next() so that we delay all things equally. Even
	 * if we move to multiple queues to push stuff down the stack, we'll want to
	 * insert in order and let the lower layers do whatever reordering they want.
	 */
	FUNC1(&sc->sc_bioq, bp);

	return (0);
}