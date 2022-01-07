
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmbus_channel {int dummy; } ;


 int atomic_fetchadd_int (int *,int) ;
 int mp_ncpus ;
 int vmbus_chan_cpu_set (struct vmbus_channel*,int) ;

void
vmbus_chan_cpu_rr(struct vmbus_channel *chan)
{
 static uint32_t vmbus_chan_nextcpu;
 int cpu;

 cpu = atomic_fetchadd_int(&vmbus_chan_nextcpu, 1) % mp_ncpus;
 vmbus_chan_cpu_set(chan, cpu);
}
