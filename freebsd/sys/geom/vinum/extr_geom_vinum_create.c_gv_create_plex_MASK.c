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
struct gv_volume {int flags; int /*<<< orphan*/  plexes; int /*<<< orphan*/  plexcount; } ;
struct gv_softc {int /*<<< orphan*/  plexes; } ;
struct gv_plex {void* rqueue; void* wqueue; void* bqueue; int /*<<< orphan*/  packets; int /*<<< orphan*/  subdisks; int /*<<< orphan*/  flags; scalar_t__ synced; struct gv_softc* vinumconf; struct gv_volume* vol_sc; int /*<<< orphan*/  volume; int /*<<< orphan*/  name; } ;
struct bio_queue_head {int dummy; } ;

/* Variables and functions */
 int GV_ERR_CREATE ; 
 int /*<<< orphan*/  GV_PLEX_ADDED ; 
 int /*<<< orphan*/  GV_PLEX_NEWBORN ; 
 int GV_VOL_NEWBORN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct gv_plex*,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct gv_plex*) ; 
 void* FUNC7 (int,int) ; 
 struct gv_volume* FUNC8 (struct gv_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_volume ; 
 int /*<<< orphan*/  plex ; 

int
FUNC9(struct gv_softc *sc, struct gv_plex *p)
{
	struct gv_volume *v;

	FUNC1(p != NULL, ("gv_create_plex: NULL p"));

	/* Find the volume this plex should be attached to. */
	v = FUNC8(sc, p->volume);
	if (v == NULL) {
		FUNC0(0, "create plex '%s': volume '%s' not found",
		    p->name, p->volume);
		FUNC6(p);
		return (GV_ERR_CREATE);
	}
	if (!(v->flags & GV_VOL_NEWBORN))
		p->flags |= GV_PLEX_ADDED;
	p->vol_sc = v;
	v->plexcount++;
	p->vinumconf = sc;
	p->synced = 0;
	p->flags |= GV_PLEX_NEWBORN;
	FUNC3(&v->plexes, p, in_volume);
	FUNC2(&p->subdisks);
	FUNC4(&p->packets);
	FUNC3(&sc->plexes, p, plex);
	p->bqueue = FUNC7(sizeof(struct bio_queue_head), M_WAITOK | M_ZERO);
	FUNC5(p->bqueue);
	p->wqueue = FUNC7(sizeof(struct bio_queue_head), M_WAITOK | M_ZERO);
	FUNC5(p->wqueue);
	p->rqueue = FUNC7(sizeof(struct bio_queue_head), M_WAITOK | M_ZERO);
	FUNC5(p->rqueue);
	return (0);
}