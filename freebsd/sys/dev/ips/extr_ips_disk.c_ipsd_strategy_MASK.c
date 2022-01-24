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
struct bio {void* bio_driver1; TYPE_2__* bio_disk; } ;
struct TYPE_7__ {size_t disk_number; TYPE_4__* sc; int /*<<< orphan*/  dev; } ;
typedef  TYPE_3__ ipsdisk_softc_t ;
struct TYPE_8__ {int /*<<< orphan*/  queue_mtx; int /*<<< orphan*/  queue; TYPE_1__* drives; } ;
struct TYPE_6__ {TYPE_3__* d_drv1; } ;
struct TYPE_5__ {scalar_t__ drivenum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct bio *iobuf)
{
	ipsdisk_softc_t *dsc;

	dsc = iobuf->bio_disk->d_drv1;	
	FUNC0(8,dsc->dev,"in strategy\n");
	iobuf->bio_driver1 = (void *)(uintptr_t)dsc->sc->drives[dsc->disk_number].drivenum;
	FUNC3(&dsc->sc->queue_mtx);
	FUNC1(&dsc->sc->queue, iobuf);
	FUNC2(dsc->sc);
	FUNC4(&dsc->sc->queue_mtx);
}