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
struct vmbus_channel {int /*<<< orphan*/  ch_tq; } ;
struct task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct task*) ; 

void
FUNC2(struct vmbus_channel *chan, struct task *task)
{

	FUNC1(chan->ch_tq, task);
	FUNC0(chan->ch_tq, task);
}