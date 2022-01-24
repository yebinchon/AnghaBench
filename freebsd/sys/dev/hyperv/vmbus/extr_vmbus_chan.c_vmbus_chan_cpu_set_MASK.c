#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmbus_channel {int ch_cpuid; int /*<<< orphan*/  ch_vcpuid; int /*<<< orphan*/  ch_id; TYPE_1__* ch_vmbus; } ;
struct TYPE_2__ {scalar_t__ vmbus_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ VMBUS_VERSION_WIN7 ; 
 scalar_t__ VMBUS_VERSION_WS2008 ; 
 scalar_t__ bootverbose ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  vcpuid ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC3(struct vmbus_channel *chan, int cpu)
{
	FUNC0(cpu >= 0 && cpu < mp_ncpus, ("invalid cpu %d", cpu));

	if (chan->ch_vmbus->vmbus_version == VMBUS_VERSION_WS2008 ||
	    chan->ch_vmbus->vmbus_version == VMBUS_VERSION_WIN7) {
		/* Only cpu0 is supported */
		cpu = 0;
	}

	chan->ch_cpuid = cpu;
	chan->ch_vcpuid = FUNC1(chan->ch_vmbus, vcpuid, cpu);

	if (bootverbose) {
		FUNC2(chan,
		    "chan%u assigned to cpu%u [vcpu%u]\n",
		    chan->ch_id, chan->ch_cpuid, chan->ch_vcpuid);
	}
}