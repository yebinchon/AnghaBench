
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int xen_hvm_set_callback (int ) ;

__attribute__((used)) static int
xenpci_resume(device_t dev)
{
 xen_hvm_set_callback(dev);
 return (0);
}
