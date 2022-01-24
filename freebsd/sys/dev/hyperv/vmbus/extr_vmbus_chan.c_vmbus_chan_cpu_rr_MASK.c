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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmbus_channel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*,int) ; 

void
FUNC2(struct vmbus_channel *chan)
{
	static uint32_t vmbus_chan_nextcpu;
	int cpu;

	cpu = FUNC0(&vmbus_chan_nextcpu, 1) % mp_ncpus;
	FUNC1(chan, cpu);
}