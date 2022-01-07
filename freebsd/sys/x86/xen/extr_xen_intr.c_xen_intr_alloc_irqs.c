
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NR_EVENT_CHANNELS ;
 scalar_t__ UINT_MAX ;
 scalar_t__ first_evtchn_irq ;
 scalar_t__ num_io_irqs ;
 int panic (char*) ;

void
xen_intr_alloc_irqs(void)
{

 if (num_io_irqs > UINT_MAX - NR_EVENT_CHANNELS)
  panic("IRQ allocation overflow (num_msi_irqs too high?)");
 first_evtchn_irq = num_io_irqs;
 num_io_irqs += NR_EVENT_CHANNELS;
}
