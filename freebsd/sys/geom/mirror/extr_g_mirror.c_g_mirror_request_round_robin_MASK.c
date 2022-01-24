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
struct g_mirror_softc {int dummy; } ;
struct g_mirror_disk {struct g_consumer* d_consumer; } ;
struct g_consumer {int acr; int acw; int ace; int /*<<< orphan*/  index; TYPE_1__* provider; } ;
struct bio {scalar_t__ bio_error; TYPE_1__* bio_to; int /*<<< orphan*/  bio_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct bio* FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  g_mirror_done ; 
 struct g_mirror_disk* FUNC5 (struct g_mirror_softc*) ; 

__attribute__((used)) static void
FUNC6(struct g_mirror_softc *sc, struct bio *bp)
{
	struct g_mirror_disk *disk;
	struct g_consumer *cp;
	struct bio *cbp;

	disk = FUNC5(sc);
	if (disk == NULL) {
		if (bp->bio_error == 0)
			bp->bio_error = ENXIO;
		FUNC3(bp, bp->bio_error);
		return;
	}
	cbp = FUNC2(bp);
	if (cbp == NULL) {
		if (bp->bio_error == 0)
			bp->bio_error = ENOMEM;
		FUNC3(bp, bp->bio_error);
		return;
	}
	/*
	 * Fill in the component buf structure.
	 */
	cp = disk->d_consumer;
	cbp->bio_done = g_mirror_done;
	cbp->bio_to = cp->provider;
	FUNC0(3, cbp, "Sending request.");
	FUNC1(cp->acr >= 1 && cp->acw >= 1 && cp->ace >= 1,
	    ("Consumer %s not opened (r%dw%de%d).", cp->provider->name, cp->acr,
	    cp->acw, cp->ace));
	cp->index++;
	FUNC4(cbp, cp);
}