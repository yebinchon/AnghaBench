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
struct vmbus_xact {int dummy; } ;
struct vmbus_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct vmbus_channel const*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_channel const*) ; 
 void* FUNC4 (struct vmbus_xact*,size_t*) ; 
 void* FUNC5 (struct vmbus_xact*,size_t*) ; 

const void *
FUNC6(const struct vmbus_channel *chan,
    struct vmbus_xact *xact, size_t *resp_len, bool can_sleep)
{
	const void *ret;

	if (can_sleep)
		ret = FUNC5(xact, resp_len);
	else
		ret = FUNC4(xact, resp_len);
	if (FUNC2(chan)) {
		/*
		 * This xact probably is interrupted, and the
		 * interruption can race the reply reception,
		 * so we have to make sure that there are nothing
		 * left on the RX bufring, i.e. this xact will
		 * not be touched, once this function returns.
		 *
		 * Since the hypervisor will not put more data
		 * onto the RX bufring once the channel is revoked,
		 * the following loop will be terminated, once all
		 * data are drained by the driver's channel
		 * callback.
		 */
		while (!FUNC3(chan)) {
			if (can_sleep)
				FUNC1("chxact", 1);
			else
				FUNC0(1000);
		}
	}
	return (ret);
}