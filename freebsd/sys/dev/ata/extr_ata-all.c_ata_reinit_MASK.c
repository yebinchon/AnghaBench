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
struct ata_request {int /*<<< orphan*/  result; int /*<<< orphan*/  callout; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unload ) (struct ata_request*) ;} ;
struct ata_channel {scalar_t__ state; int /*<<< orphan*/  sim; int /*<<< orphan*/  path; TYPE_1__ dma; struct ata_request* running; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 scalar_t__ ATA_ACTIVE ; 
 scalar_t__ ATA_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERESTART ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ata_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ata_channel* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(device_t dev)
{
    struct ata_channel *ch = FUNC3(dev);
    struct ata_request *request;

	FUNC6(ch->sim, 1);
	if ((request = ch->running)) {
		ch->running = NULL;
		if (ch->state == ATA_ACTIVE)
		    ch->state = ATA_IDLE;
		FUNC2(&request->callout);
		if (ch->dma.unload)
		    ch->dma.unload(request);
		request->result = ERESTART;
		FUNC1(dev, request);
	}
	/* reset the controller HW, the channel and device(s) */
	FUNC0(dev);
	/* Tell the XPT about the event */
	FUNC5(AC_BUS_RESET, ch->path, NULL);
	FUNC7(ch->sim, TRUE);
	return(0);
}