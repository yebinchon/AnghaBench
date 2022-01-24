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
struct vmbus_channel {int /*<<< orphan*/  ch_guid_type; } ;
struct hyperv_guid {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct hyperv_guid const*,int) ; 
 struct vmbus_channel* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t bus, device_t dev,
    const struct hyperv_guid *guid)
{
	const struct vmbus_channel *chan = FUNC1(dev);

	if (FUNC0(&chan->ch_guid_type, guid, sizeof(struct hyperv_guid)) == 0)
		return 0;
	return ENXIO;
}