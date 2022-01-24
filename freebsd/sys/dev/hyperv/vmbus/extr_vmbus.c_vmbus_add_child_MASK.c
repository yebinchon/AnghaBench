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
struct vmbus_softc {int /*<<< orphan*/  vmbus_dev; } ;
struct vmbus_channel {int /*<<< orphan*/ * ch_dev; int /*<<< orphan*/  ch_id; struct vmbus_softc* ch_vmbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct vmbus_channel *chan)
{
	struct vmbus_softc *sc = chan->ch_vmbus;
	device_t parent = sc->vmbus_dev;

	FUNC4(&Giant);

	chan->ch_dev = FUNC0(parent, NULL, -1);
	if (chan->ch_dev == NULL) {
		FUNC5(&Giant);
		FUNC1(parent, "device_add_child for chan%u failed\n",
		    chan->ch_id);
		return (ENXIO);
	}
	FUNC3(chan->ch_dev, chan);
	FUNC2(chan->ch_dev);

	FUNC5(&Giant);
	return (0);
}