#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct g_kerneldump {scalar_t__ offset; scalar_t__ length; } ;
struct g_concat_softc {size_t sc_ndisks; struct g_concat_disk* sc_disks; } ;
struct g_concat_disk {scalar_t__ d_start; scalar_t__ d_end; TYPE_4__* d_consumer; } ;
struct bio {int /*<<< orphan*/  bio_done; scalar_t__ bio_data; TYPE_2__* bio_to; } ;
struct TYPE_8__ {TYPE_3__* provider; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__* geom; } ;
struct TYPE_5__ {struct g_concat_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,TYPE_4__*) ; 
 int /*<<< orphan*/  g_std_done ; 

__attribute__((used)) static void
FUNC4(struct bio *bp)
{
	struct g_concat_softc *sc;
	struct g_concat_disk *disk;
	struct bio *cbp;
	struct g_kerneldump *gkd;
	u_int i;

	sc = bp->bio_to->geom->softc;
	gkd = (struct g_kerneldump *)bp->bio_data;
	for (i = 0; i < sc->sc_ndisks; i++) {
		if (sc->sc_disks[i].d_start <= gkd->offset &&
		    sc->sc_disks[i].d_end > gkd->offset)
			break;
	}
	if (i == sc->sc_ndisks) {
		FUNC2(bp, EOPNOTSUPP);
		return;
	}
	disk = &sc->sc_disks[i];
	gkd->offset -= disk->d_start;
	if (gkd->length > disk->d_end - disk->d_start - gkd->offset)
		gkd->length = disk->d_end - disk->d_start - gkd->offset;
	cbp = FUNC1(bp);
	if (cbp == NULL) {
		FUNC2(bp, ENOMEM);
		return;
	}
	cbp->bio_done = g_std_done;
	FUNC3(cbp, disk->d_consumer);
	FUNC0(1, "Kernel dump will go to %s.",
	    disk->d_consumer->provider->name);
}