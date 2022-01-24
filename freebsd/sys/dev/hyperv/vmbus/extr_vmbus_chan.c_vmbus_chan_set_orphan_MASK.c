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
struct vmbus_xact_ctx {int dummy; } ;
struct vmbus_channel {int /*<<< orphan*/  ch_orphan_lock; struct vmbus_xact_ctx* ch_orphan_xact; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct vmbus_channel *chan, struct vmbus_xact_ctx *xact)
{

	FUNC0(&chan->ch_orphan_lock);
	chan->ch_orphan_xact = xact;
	FUNC1(&chan->ch_orphan_lock);
}