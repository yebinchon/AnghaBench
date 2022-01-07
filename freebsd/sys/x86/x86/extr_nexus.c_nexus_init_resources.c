
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rm_start; char* rm_descr; int rm_end; void* rm_type; } ;


 void* RMAN_ARRAY ;
 int cpu_getmaxphyaddr () ;
 TYPE_1__ drq_rman ;
 int * intr_lookup_source (int) ;
 TYPE_1__ irq_rman ;
 TYPE_1__ mem_rman ;
 int num_io_irqs ;
 int panic (char*) ;
 TYPE_1__ port_rman ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,int,int) ;

void
nexus_init_resources(void)
{
 int irq;
 irq_rman.rm_start = 0;
 irq_rman.rm_type = RMAN_ARRAY;
 irq_rman.rm_descr = "Interrupt request lines";
 irq_rman.rm_end = num_io_irqs - 1;
 if (rman_init(&irq_rman))
  panic("nexus_init_resources irq_rman");





 for (irq = 0; irq < num_io_irqs; irq++)
  if (intr_lookup_source(irq) != ((void*)0))
   if (rman_manage_region(&irq_rman, irq, irq) != 0)
    panic("nexus_init_resources irq_rman add");






 drq_rman.rm_start = 0;
 drq_rman.rm_end = 7;
 drq_rman.rm_type = RMAN_ARRAY;
 drq_rman.rm_descr = "DMA request lines";

 if (rman_init(&drq_rman)
     || rman_manage_region(&drq_rman,
      drq_rman.rm_start, drq_rman.rm_end))
  panic("nexus_init_resources drq_rman");






 port_rman.rm_start = 0;
 port_rman.rm_end = 0xffff;
 port_rman.rm_type = RMAN_ARRAY;
 port_rman.rm_descr = "I/O ports";
 if (rman_init(&port_rman)
     || rman_manage_region(&port_rman, 0, 0xffff))
  panic("nexus_init_resources port_rman");

 mem_rman.rm_start = 0;
 mem_rman.rm_end = cpu_getmaxphyaddr();
 mem_rman.rm_type = RMAN_ARRAY;
 mem_rman.rm_descr = "I/O memory addresses";
 if (rman_init(&mem_rman)
     || rman_manage_region(&mem_rman, 0, mem_rman.rm_end))
  panic("nexus_init_resources mem_rman");
}
