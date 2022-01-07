
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rman_res_t ;
typedef int device_t ;
struct TYPE_2__ {int rid; } ;
typedef TYPE_1__ atkbdc_device_t ;


 int SYS_RES_IRQ ;
 int bus_get_resource_start (int ,int ,int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 int device_get_flags (int ) ;
 scalar_t__ device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

int
atkbdc_print_child(device_t bus, device_t dev)
{
 atkbdc_device_t *kbdcdev;
 rman_res_t irq;
 int flags;
 int retval = 0;

 kbdcdev = (atkbdc_device_t *)device_get_ivars(dev);

 retval += bus_print_child_header(bus, dev);
 flags = device_get_flags(dev);
 if (flags != 0)
  retval += printf(" flags 0x%x", flags);
 irq = bus_get_resource_start(dev, SYS_RES_IRQ, kbdcdev->rid);
 if (irq != 0)
  retval += printf(" irq %jd", irq);
 retval += bus_print_child_footer(bus, dev);

 return (retval);
}
