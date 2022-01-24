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
struct ata_channel {int flags; scalar_t__ state; int /*<<< orphan*/  state_mtx; int /*<<< orphan*/  sim; int /*<<< orphan*/  poll_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ATA_IDLE ; 
 int ATA_PERIODIC_POLL ; 
 int ENXIO ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ata_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct ata_channel*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int
FUNC6(device_t dev)
{
    struct ata_channel *ch;

    /* check for valid device */
    if (!dev || !(ch = FUNC1(dev)))
	return ENXIO;

    if (ch->flags & ATA_PERIODIC_POLL)
	FUNC0(&ch->poll_callout);
    FUNC3(&ch->state_mtx);
    FUNC5(ch->sim, 1);
    while (ch->state != ATA_IDLE)
	FUNC2(ch, &ch->state_mtx, PRIBIO, "atasusp", hz/100);
    FUNC4(&ch->state_mtx);
    return(0);
}