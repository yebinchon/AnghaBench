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
struct gv_volume {int /*<<< orphan*/  wqueue; struct gv_softc* vinumconf; } ;
struct gv_softc {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gv_softc*,struct bio*) ; 

void
FUNC3(struct gv_volume *v)
{
	struct gv_softc *sc;
	struct bio *bp;

	FUNC0(v != NULL, ("NULL v"));
	sc = v->vinumconf;
	FUNC0(sc != NULL, ("NULL sc"));

	bp = FUNC1(v->wqueue);
	while (bp != NULL) {
		FUNC2(sc, bp);
		bp = FUNC1(v->wqueue);
	}
}