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
struct xgbe_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct xgbe_channel*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_channel*) ; 

__attribute__((used)) static int FUNC3(struct xgbe_channel *channel, int budget)
{
	int processed = 0;

	FUNC0("-->xgbe_one_poll: budget=%d\n", budget);

	/* Cleanup Tx ring first */
	FUNC2(channel);

	/* Process Rx ring next */
	processed = FUNC1(channel, budget);

	FUNC0("<--xgbe_one_poll: received = %d\n", processed);

	return processed;
}