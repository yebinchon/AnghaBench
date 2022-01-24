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
struct gv_volume {int /*<<< orphan*/  wqueue; int /*<<< orphan*/  plexes; int /*<<< orphan*/  flags; struct gv_softc* vinumconf; } ;
struct gv_softc {int /*<<< orphan*/  volumes; } ;
struct bio_queue_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_VOL_NEWBORN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gv_volume*,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  volume ; 

int
FUNC5(struct gv_softc *sc, struct gv_volume *v)
{
	FUNC0(v != NULL, ("gv_create_volume: NULL v"));

	v->vinumconf = sc;
	v->flags |= GV_VOL_NEWBORN;
	FUNC1(&v->plexes);
	FUNC2(&sc->volumes, v, volume);
	v->wqueue = FUNC4(sizeof(struct bio_queue_head), M_WAITOK | M_ZERO);
	FUNC3(v->wqueue);
	return (0);
}