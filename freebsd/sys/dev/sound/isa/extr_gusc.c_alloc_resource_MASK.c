#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {int* io_rid; int irq_rid; int* drq_rid; int /*<<< orphan*/  irq_alloced; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * io_alloced; int /*<<< orphan*/ ** io; int /*<<< orphan*/  dev; int /*<<< orphan*/ * drq_alloced; int /*<<< orphan*/ ** drq; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int DV_F_DRQ_MASK ; 
 int DV_F_DUAL_DMA ; 
#define  LOGICALID_MIDI 131 
#define  LOGICALID_NOPNP 130 
#define  LOGICALID_OPL 129 
#define  LOGICALID_PCM 128 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * io_offset ; 
 int* io_range ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC10(sc_p scp)
{
	int i, base, lid, flags;
	device_t dev;

	flags = 0;
	if (FUNC8(scp->dev))
		lid = FUNC6(scp->dev);
	else {
		lid = LOGICALID_NOPNP;
		flags = FUNC4(scp->dev);
	}
	switch(lid) {
	case LOGICALID_PCM:
	case LOGICALID_NOPNP:		/* XXX Non-PnP */
		if (lid == LOGICALID_NOPNP)
			base = FUNC7(scp->dev);
		else
			base = 0;
		for (i = 0 ; i < FUNC9(scp->io); i++) {
			if (scp->io[i] == NULL) {
				scp->io_rid[i] = i;
				if (base == 0)
					scp->io[i] =
					    FUNC3(scp->dev,
					    	    			SYS_RES_IOPORT,
					    	    			&scp->io_rid[i],
									io_range[i],
									RF_ACTIVE);
				else
					scp->io[i] = FUNC1(scp->dev, SYS_RES_IOPORT, &scp->io_rid[i],
									base + io_offset[i],
									base + io_offset[i] + io_range[i] - 1
									, io_range[i], RF_ACTIVE);
				if (scp->io[i] == NULL)
					return (1);
				scp->io_alloced[i] = 0;
			}
		}
		if (scp->irq == NULL) {
			scp->irq_rid = 0;
			scp->irq = 
				FUNC2(scp->dev, SYS_RES_IRQ, 
						       &scp->irq_rid,
						       RF_ACTIVE|RF_SHAREABLE);
			if (scp->irq == NULL)
				return (1);
			scp->irq_alloced = 0;
		}
		for (i = 0 ; i < FUNC9(scp->drq); i++) {
			if (scp->drq[i] == NULL) {
				scp->drq_rid[i] = i;
				if (base == 0 || i == 0)
					scp->drq[i] = 
						FUNC2(
							scp->dev, SYS_RES_DRQ,
							&scp->drq_rid[i],
							RF_ACTIVE);
				else if ((flags & DV_F_DUAL_DMA) != 0)
					/* XXX The secondary drq is specified in the flag. */
					scp->drq[i] = FUNC1(scp->dev, SYS_RES_DRQ, &scp->drq_rid[i],
									 flags & DV_F_DRQ_MASK,
									 flags & DV_F_DRQ_MASK, 1, RF_ACTIVE);
				if (scp->drq[i] == NULL)
					return (1);
				scp->drq_alloced[i] = 0;
			}
		}
		break;
	case LOGICALID_OPL:
		if (scp->io[0] == NULL) {
			scp->io_rid[0] = 0;
			scp->io[0] = FUNC3(scp->dev,
								 SYS_RES_IOPORT,
								 &scp->io_rid[0],
								 io_range[0],
								 RF_ACTIVE);
			if (scp->io[0] == NULL)
				return (1);
			scp->io_alloced[0] = 0;
		}
		break;
	case LOGICALID_MIDI:
		if (scp->io[0] == NULL) {
			scp->io_rid[0] = 0;
			scp->io[0] = FUNC3(scp->dev,
								 SYS_RES_IOPORT,
								 &scp->io_rid[0],
								 io_range[0],
								 RF_ACTIVE);
			if (scp->io[0] == NULL)
				return (1);
			scp->io_alloced[0] = 0;
		}
		if (scp->irq == NULL) {
			/* The irq is shared with pcm audio. */
			dev = FUNC5(scp);
			if (dev == NULL)
				return (1);
			scp->irq_rid = 0;
			scp->irq = FUNC0(dev, NULL, SYS_RES_IRQ, &scp->irq_rid,
						      0, ~0, 1, RF_ACTIVE | RF_SHAREABLE);
			if (scp->irq == NULL)
				return (1);
			scp->irq_alloced = 0;
		}
		break;
	}
	return (0);
}