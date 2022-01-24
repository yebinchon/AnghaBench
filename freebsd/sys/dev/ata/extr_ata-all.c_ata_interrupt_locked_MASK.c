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
struct ata_request {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ (* end_transaction ) (struct ata_request*) ;int /*<<< orphan*/  (* status ) (int /*<<< orphan*/ ) ;} ;
struct ata_channel {scalar_t__ state; int /*<<< orphan*/  dev; struct ata_request* running; TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ ATA_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct ata_request*,char*) ; 
 scalar_t__ ATA_IDLE ; 
 scalar_t__ ATA_OP_FINISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ata_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ata_request*) ; 

__attribute__((used)) static void
FUNC5(void *data)
{
	struct ata_channel *ch = (struct ata_channel *)data;
	struct ata_request *request;

	/* ignore interrupt if its not for us */
	if (ch->hw.status && !ch->hw.status(ch->dev))
		return;

	/* do we have a running request */
	if (!(request = ch->running))
		return;

	FUNC0(request, "interrupt");

	/* safetycheck for the right state */
	if (ch->state == ATA_IDLE) {
		FUNC2(request->dev, "interrupt on idle channel ignored\n");
		return;
	}

	/*
	 * we have the HW locks, so end the transaction for this request
	 * if it finishes immediately otherwise wait for next interrupt
	 */
	if (ch->hw.end_transaction(request) == ATA_OP_FINISHED) {
		ch->running = NULL;
		if (ch->state == ATA_ACTIVE)
			ch->state = ATA_IDLE;
		FUNC1(ch->dev, request);
		return;
	}
}