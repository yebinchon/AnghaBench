#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_bde_work {int /*<<< orphan*/  state; TYPE_1__* bp; int /*<<< orphan*/ * ksp; TYPE_2__* sp; int /*<<< orphan*/  length; int /*<<< orphan*/  error; int /*<<< orphan*/  data; struct g_bde_softc* softc; } ;
struct g_bde_softc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct TYPE_3__ {int bio_cmd; } ;

/* Variables and functions */
#define  BIO_DELETE 130 
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  WAIT ; 
 void* FUNC1 (struct g_bde_work*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_bde_softc*,struct g_bde_work*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_bde_work*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct g_bde_work*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_bde_softc*) ; 

__attribute__((used)) static void
FUNC7(struct g_bde_work *wp)
{
	struct g_bde_softc *sc;

	FUNC0(wp != NULL, ("NULL wp in g_bde_start2"));
	FUNC0(wp->softc != NULL, ("NULL wp->softc"));
	FUNC5(G_T_TOPOLOGY, "g_bde_start2(%p)", wp);
	sc = wp->softc;
	switch (wp->bp->bio_cmd) {
	case BIO_READ:
		wp->sp = FUNC1(wp, 0);
		if (wp->sp == NULL) {
			FUNC4(wp, ENOMEM);
			return;
		}
		wp->sp->size = wp->length;
		wp->sp->data = wp->data;
		if (FUNC3(wp->sp) != 0) {
			FUNC4(wp, ENOMEM);
			return;
		}
		FUNC2(sc, wp);
		if (wp->ksp == NULL)
			wp->error = ENOMEM;
		break;
	case BIO_DELETE:
		wp->sp = FUNC1(wp, wp->length);
		if (wp->sp == NULL) {
			FUNC4(wp, ENOMEM);
			return;
		}
		break;
	case BIO_WRITE:
		wp->sp = FUNC1(wp, wp->length);
		if (wp->sp == NULL) {
			FUNC4(wp, ENOMEM);
			return;
		}
		FUNC2(sc, wp);
		if (wp->ksp == NULL) {
			FUNC4(wp, ENOMEM);
			return;
		}
		break;
	default:
		FUNC0(0 == 1, 
		    ("Wrong bio_cmd %d in g_bde_start2", wp->bp->bio_cmd));
	}

	wp->state = WAIT;
	FUNC6(sc);
}