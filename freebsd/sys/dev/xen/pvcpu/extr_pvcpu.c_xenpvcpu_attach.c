
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int pc_device; } ;
typedef int device_t ;


 int device_get_unit (int ) ;
 struct pcpu* pcpu_find (int) ;

__attribute__((used)) static int
xenpvcpu_attach(device_t dev)
{
 struct pcpu *pc;
 int cpu;

 cpu = device_get_unit(dev);
 pc = pcpu_find(cpu);
 pc->pc_device = dev;
 return (0);
}
