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
struct gv_softc {int dummy; } ;
struct gv_sd {scalar_t__ drive_offset; scalar_t__ size; scalar_t__ initialized; int /*<<< orphan*/  name; struct gv_drive* drive_sc; } ;
struct gv_plex {struct gv_softc* vinumconf; } ;
struct gv_drive {struct g_consumer* consumer; } ;
struct g_consumer {int dummy; } ;
struct bio {scalar_t__ bio_offset; scalar_t__ bio_length; int bio_error; int /*<<< orphan*/ * bio_data; struct gv_sd* bio_caller1; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_SAVE_CONFIG ; 
 int /*<<< orphan*/  GV_SD_STALE ; 
 int /*<<< orphan*/  GV_SD_UP ; 
 int GV_SETSTATE_CONFIG ; 
 int GV_SETSTATE_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct gv_sd*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gv_sd*,int /*<<< orphan*/ ,int) ; 

void
FUNC11(struct gv_plex *p, struct bio *bp)
{
	struct gv_softc *sc;
	struct gv_drive *d;
	struct g_consumer *cp;
	struct gv_sd *s;
	off_t start, length;
	caddr_t data;
	int error;

	s = bp->bio_caller1;
	start = bp->bio_offset;
	length = bp->bio_length;
	error = bp->bio_error;
	data = bp->bio_data;

	FUNC1(s != NULL, ("gv_init_complete: NULL s"));
	d = s->drive_sc;
	FUNC1(d != NULL, ("gv_init_complete: NULL d"));
	cp = d->consumer;
	FUNC1(cp != NULL, ("gv_init_complete: NULL cp"));
	sc = p->vinumconf;
	FUNC1(sc != NULL, ("gv_init_complete: NULL sc"));

	FUNC3(bp);

	/*
	 * First we need to find out if it was okay, and abort if it's not.
	 * Then we need to free previous buffers, find out the correct subdisk,
	 * as well as getting the correct starting point and length of the BIO.
	 */
	if (start >= s->drive_offset + s->size) {
		/* Free the data we initialized. */
		if (data != NULL)
			FUNC4(data);
		FUNC5();
		FUNC6();
		FUNC2(cp, 0, -1, 0);
		FUNC7();
		if (error) {
			FUNC10(s, GV_SD_STALE, GV_SETSTATE_FORCE |
			    GV_SETSTATE_CONFIG);
		} else {
			FUNC10(s, GV_SD_UP, GV_SETSTATE_CONFIG);
			s->initialized = 0;
			FUNC9(sc, GV_EVENT_SAVE_CONFIG, sc, NULL, 0, 0);
			FUNC0(1, "subdisk '%s' init: finished "
			    "successfully", s->name);
		}
		return;
	}
	s->initialized += length;
	start += length;
	FUNC8(s, start, data, length);
}