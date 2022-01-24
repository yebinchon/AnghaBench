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
struct g_eli_softc {int /*<<< orphan*/  sc_queue; int /*<<< orphan*/  sc_queue_mtx; } ;
struct bio {scalar_t__ bio_pflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ G_ELI_NEW_BIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct g_eli_softc *sc)
{
	struct bio *bp;

	FUNC3(&sc->sc_queue_mtx, MA_OWNED);

	while ((bp = FUNC1(&sc->sc_queue)) != NULL) {
		FUNC0(bp->bio_pflags == G_ELI_NEW_BIO,
		    ("Not new bio when canceling (bp=%p).", bp));
		FUNC2(bp, ENXIO);
	}
}