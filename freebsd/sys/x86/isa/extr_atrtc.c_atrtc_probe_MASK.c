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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_LOW_PRIORITY ; 
 int ENOENT ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int atrtc_enabled ; 
 int /*<<< orphan*/  atrtc_ids ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	int result;

	if ((atrtc_enabled == -1 && FUNC1()) ||
	    (atrtc_enabled == 0))
		return (ENXIO);

	result = FUNC0(FUNC2(dev), dev, atrtc_ids);
	/* ENOENT means no PnP-ID, device is hinted. */
	if (result == ENOENT) {
		FUNC3(dev, "AT realtime clock");
		return (BUS_PROBE_LOW_PRIORITY);
	}
	return (result);
}