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
struct vmbus_channel {int /*<<< orphan*/  ch_guid_inst; int /*<<< orphan*/  ch_guid_type; } ;
typedef  int /*<<< orphan*/  guidbuf ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int HYPERV_GUID_STRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 struct vmbus_channel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, char *buf, size_t buflen)
{
	const struct vmbus_channel *chan;
	char guidbuf[HYPERV_GUID_STRLEN];

	chan = FUNC2(child);
	if (chan == NULL) {
		/* Event timer device, which does not belong to a channel */
		return (0);
	}

	FUNC1(buf, "classid=", buflen);
	FUNC0(&chan->ch_guid_type, guidbuf, sizeof(guidbuf));
	FUNC1(buf, guidbuf, buflen);

	FUNC1(buf, " deviceid=", buflen);
	FUNC0(&chan->ch_guid_inst, guidbuf, sizeof(guidbuf));
	FUNC1(buf, guidbuf, buflen);

	return (0);
}