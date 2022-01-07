
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * device_t ;
struct TYPE_4__ {int rm_end; char* rm_descr; scalar_t__ rm_start; int rm_type; } ;


 int RMAN_ARRAY ;
 int bus_generic_attach (int *) ;
 TYPE_1__ cpu_hardirq_rman ;
 int * device_add_child (int *,char*,scalar_t__) ;
 scalar_t__ device_get_unit (int *) ;
 int device_printf (int *,char*) ;
 int device_set_desc (int *,char*) ;
 int panic (char*) ;
 int rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static int
cpu_attach(device_t dev)
{
 int error;




 cpu_hardirq_rman.rm_start = 0;
 cpu_hardirq_rman.rm_end = 5;
 cpu_hardirq_rman.rm_type = RMAN_ARRAY;
 cpu_hardirq_rman.rm_descr = "CPU Hard Interrupts";

 error = rman_init(&cpu_hardirq_rman);
 if (error != 0) {
  device_printf(dev, "failed to initialize irq resources\n");
  return (error);
 }

 error = rman_manage_region(&cpu_hardirq_rman,
       cpu_hardirq_rman.rm_start,
       cpu_hardirq_rman.rm_end);
 if (error != 0) {
  device_printf(dev, "failed to manage irq resources\n");
  return (error);
 }

 if (device_get_unit(dev) != 0)
  panic("can't attach more cpus");
 device_set_desc(dev, "MIPS32 processor");







 return (bus_generic_attach(dev));
}
