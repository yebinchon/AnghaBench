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
struct gv_softc {int dummy; } ;
struct gv_plex {scalar_t__ synced; int /*<<< orphan*/  name; TYPE_1__* vol_sc; scalar_t__ size; scalar_t__ stripesize; struct gv_softc* vinumconf; } ;
struct bio {int bio_error; int bio_pflags; int /*<<< orphan*/  bio_data; } ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_2__ {int /*<<< orphan*/  provider; } ;

/* Variables and functions */
 int EAGAIN ; 
 int GV_BIO_MALLOC ; 
 int GV_BIO_PARITY ; 
 int /*<<< orphan*/  GV_EVENT_SAVE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gv_plex*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(struct gv_plex *p, struct bio *bp)
{
	struct gv_softc *sc;
	int error, flags;

	error = bp->bio_error;
	flags = bp->bio_pflags;
	flags &= ~GV_BIO_MALLOC;

	sc = p->vinumconf;
	FUNC1(sc != NULL, ("gv_parity_complete: NULL sc"));

	/* Clean up what we allocated. */
	if (bp->bio_pflags & GV_BIO_MALLOC)
		FUNC3(bp->bio_data);
	FUNC2(bp);

	if (error == EAGAIN) {
		FUNC0(0, "parity incorrect at offset 0x%jx",
		    (intmax_t)p->synced);
	}

	/* Any error is fatal, except EAGAIN when we're rebuilding. */
	if (error && !(error == EAGAIN && (flags & GV_BIO_PARITY))) {
		/* Make sure we don't have the lock. */
		FUNC4();
		FUNC5();
		FUNC7(p->vol_sc->provider, -1, -1, 0);
		FUNC6();
		FUNC0(0, "parity check on %s failed at 0x%jx "
		    "errno %d", p->name, (intmax_t)p->synced, error);
		return;
	} else {
		p->synced += p->stripesize;
	}

	if (p->synced >= p->size) {
		/* Make sure we don't have the lock. */
		FUNC4();
		FUNC5();
		FUNC7(p->vol_sc->provider, -1, -1, 0);
		FUNC6();
		/* We're finished. */
		FUNC0(1, "parity operation on %s finished", p->name);
		p->synced = 0;
		FUNC9(sc, GV_EVENT_SAVE_CONFIG, sc, NULL, 0, 0);
		return;
	}

	/* Send down next. It will determine if we need to itself. */
	FUNC8(p, flags, p->synced);
}