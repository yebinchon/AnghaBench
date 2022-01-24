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
struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
struct gv_sd {struct gv_plex* plex_sc; } ;
struct gv_plex {int org; struct gv_volume* vol_sc; } ;
struct bio {struct gv_sd* bio_caller1; } ;

/* Variables and functions */
#define  GV_PLEX_CONCAT 130 
#define  GV_PLEX_RAID5 129 
#define  GV_PLEX_STRIPED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gv_plex*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct gv_plex*,struct bio*) ; 

void
FUNC3(struct gv_softc *sc, struct bio *bp)
{
	struct gv_volume *v;
	struct gv_plex *p;
	struct gv_sd *s;

	s = bp->bio_caller1;
	FUNC0(s != NULL, ("gv_bio_done: NULL s"));
	p = s->plex_sc;
	FUNC0(p != NULL, ("gv_bio_done: NULL p"));
	v = p->vol_sc;
	FUNC0(v != NULL, ("gv_bio_done: NULL v"));

	switch (p->org) {
	case GV_PLEX_CONCAT:
	case GV_PLEX_STRIPED:
		FUNC1(p, bp);
		break;
	case GV_PLEX_RAID5:
		FUNC2(p, bp);
		break;
	}
}