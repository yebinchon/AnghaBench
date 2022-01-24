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
struct TYPE_4__ {int /*<<< orphan*/ * irq; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/ ** io; int /*<<< orphan*/ * io_rid; int /*<<< orphan*/  dev; int /*<<< orphan*/ ** drq; int /*<<< orphan*/ * drq_rid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  LOGICALID_MIDI 131 
#define  LOGICALID_NOPNP 130 
#define  LOGICALID_OPL 129 
#define  LOGICALID_PCM 128 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC6(sc_p scp)
{
	int i, lid;
	device_t dev;

	if (FUNC4(scp->dev))
		lid = FUNC3(scp->dev);
	else
		lid = LOGICALID_NOPNP;

	switch(lid) {
	case LOGICALID_PCM:
	case LOGICALID_NOPNP:		/* XXX Non-PnP */
		for (i = 0 ; i < FUNC5(scp->io); i++) {
			if (scp->io[i] != NULL) {
				FUNC1(scp->dev, SYS_RES_IOPORT, scp->io_rid[i], scp->io[i]);
				scp->io[i] = NULL;
			}
		}
		if (scp->irq != NULL) {
			FUNC1(scp->dev, SYS_RES_IRQ, scp->irq_rid, scp->irq);
			scp->irq = NULL;
		}
		for (i = 0 ; i < FUNC5(scp->drq); i++) {
			if (scp->drq[i] != NULL) {
				FUNC1(scp->dev, SYS_RES_DRQ, scp->drq_rid[i], scp->drq[i]);
				scp->drq[i] = NULL;
			}
		}
		break;
	case LOGICALID_OPL:
		if (scp->io[0] != NULL) {
			FUNC1(scp->dev, SYS_RES_IOPORT, scp->io_rid[0], scp->io[0]);
			scp->io[0] = NULL;
		}
		break;
	case LOGICALID_MIDI:
		if (scp->io[0] != NULL) {
			FUNC1(scp->dev, SYS_RES_IOPORT, scp->io_rid[0], scp->io[0]);
			scp->io[0] = NULL;
		}
		if (scp->irq != NULL) {
			/* The irq is shared with pcm audio. */
			dev = FUNC2(scp);
			if (dev == NULL)
				return (1);
			FUNC0(dev, NULL, SYS_RES_IOPORT, scp->irq_rid, scp->irq);
			scp->irq = NULL;
		}
		break;
	}
	return (0);
}