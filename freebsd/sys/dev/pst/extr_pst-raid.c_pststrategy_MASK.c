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
struct pst_softc {TYPE_2__* iop; int /*<<< orphan*/  queue; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_3__ {struct pst_softc* d_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pst_softc*) ; 

__attribute__((used)) static void
FUNC4(struct bio *bp)
{
    struct pst_softc *psc = bp->bio_disk->d_drv1;
    
    FUNC1(&psc->iop->mtx);
    FUNC0(&psc->queue, bp);
    FUNC3(psc);
    FUNC2(&psc->iop->mtx);
}