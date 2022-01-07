
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int ch_cpuid; int ch_vcpuid; int ch_id; TYPE_1__* ch_vmbus; } ;
struct TYPE_2__ {scalar_t__ vmbus_version; } ;


 int KASSERT (int,char*) ;
 int VMBUS_PCPU_GET (TYPE_1__*,int ,int) ;
 scalar_t__ VMBUS_VERSION_WIN7 ;
 scalar_t__ VMBUS_VERSION_WS2008 ;
 scalar_t__ bootverbose ;
 int mp_ncpus ;
 int vcpuid ;
 int vmbus_chan_printf (struct vmbus_channel*,char*,int ,int,int ) ;

void
vmbus_chan_cpu_set(struct vmbus_channel *chan, int cpu)
{
 KASSERT(cpu >= 0 && cpu < mp_ncpus, ("invalid cpu %d", cpu));

 if (chan->ch_vmbus->vmbus_version == VMBUS_VERSION_WS2008 ||
     chan->ch_vmbus->vmbus_version == VMBUS_VERSION_WIN7) {

  cpu = 0;
 }

 chan->ch_cpuid = cpu;
 chan->ch_vcpuid = VMBUS_PCPU_GET(chan->ch_vmbus, vcpuid, cpu);

 if (bootverbose) {
  vmbus_chan_printf(chan,
      "chan%u assigned to cpu%u [vcpu%u]\n",
      chan->ch_id, chan->ch_cpuid, chan->ch_vcpuid);
 }
}
