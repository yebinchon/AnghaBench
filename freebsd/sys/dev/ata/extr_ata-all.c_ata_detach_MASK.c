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
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ) ;} ;
struct ata_channel {int flags; int /*<<< orphan*/  state_mtx; TYPE_1__ dma; int /*<<< orphan*/ * r_irq; int /*<<< orphan*/  ih; int /*<<< orphan*/ * sim; int /*<<< orphan*/  path; int /*<<< orphan*/  conntask; int /*<<< orphan*/  poll_callout; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  ATA_IRQ_RID ; 
 int ATA_PERIODIC_POLL ; 
 int /*<<< orphan*/  ATA_STALL_QUEUE ; 
 int ENXIO ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ata_channel* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int
FUNC14(device_t dev)
{
    struct ata_channel *ch = FUNC5(dev);

    /* check that we have a valid channel to detach */
    if (!ch->r_irq)
	return ENXIO;

    /* grap the channel lock so no new requests gets launched */
    FUNC7(&ch->state_mtx);
    ch->state |= ATA_STALL_QUEUE;
    FUNC8(&ch->state_mtx);
    if (ch->flags & ATA_PERIODIC_POLL)
	FUNC2(&ch->poll_callout);

    FUNC10(taskqueue_thread, &ch->conntask);

	FUNC7(&ch->state_mtx);
	FUNC11(AC_LOST_DEVICE, ch->path, NULL);
	FUNC13(ch->path);
	FUNC12(FUNC4(ch->sim));
	FUNC3(ch->sim, /*free_devq*/TRUE);
	ch->sim = NULL;
	FUNC8(&ch->state_mtx);

    /* release resources */
    FUNC1(dev, ch->r_irq, ch->ih);
    FUNC0(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);
    ch->r_irq = NULL;

    /* free DMA resources if DMA HW present*/
    if (ch->dma.free)
	ch->dma.free(dev);

    FUNC6(&ch->state_mtx);
    return 0;
}