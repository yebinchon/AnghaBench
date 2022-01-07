
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int device_set_desc (int ,char*) ;
 int gntdev_dev ;

__attribute__((used)) static int
gntdev_probe(device_t dev)
{

 gntdev_dev = dev;
 device_set_desc(dev, "Xen grant-table user-space device");
 return (BUS_PROBE_NOWILDCARD);
}
