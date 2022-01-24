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
struct g_mirror_softc {int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_queue; int /*<<< orphan*/  sc_regular_delayed; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio ; 
 int /*<<< orphan*/  bio_queue ; 
 scalar_t__ FUNC4 (struct g_mirror_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct g_mirror_softc *sc)
{
	struct bio *bp;

	if ((bp = FUNC2(&sc->sc_regular_delayed)) == NULL)
		return;
	if (FUNC4(sc, bp))
		return;

	FUNC0(2, "Requeuing regular requests after collision.");
	FUNC5(&sc->sc_queue_mtx);
	FUNC1(&sc->sc_regular_delayed, &sc->sc_queue, bio_queue);
	FUNC3(&sc->sc_regular_delayed, &sc->sc_queue, bio, bio_queue);
	FUNC6(&sc->sc_queue_mtx);
}