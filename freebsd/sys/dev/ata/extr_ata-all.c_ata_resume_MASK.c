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
struct ata_channel {int flags; int /*<<< orphan*/  poll_callout; int /*<<< orphan*/  state_mtx; int /*<<< orphan*/  sim; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_PERIODIC_POLL ; 
 int ENXIO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ata_periodic_poll ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ata_channel*) ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev)
{
    struct ata_channel *ch;
    int error;

    /* check for valid device */
    if (!dev || !(ch = FUNC2(dev)))
	return ENXIO;

	FUNC3(&ch->state_mtx);
	error = FUNC0(dev);
	FUNC5(ch->sim, TRUE);
	FUNC4(&ch->state_mtx);
	if (ch->flags & ATA_PERIODIC_POLL)
		FUNC1(&ch->poll_callout, hz, ata_periodic_poll, ch);
    return error;
}