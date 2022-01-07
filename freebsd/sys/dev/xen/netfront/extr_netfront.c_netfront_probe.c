
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int strcmp (int ,char*) ;
 scalar_t__ xen_disable_pv_nics ;
 scalar_t__ xen_hvm_domain () ;
 int xenbus_get_type (int ) ;

__attribute__((used)) static int
netfront_probe(device_t dev)
{

 if (xen_hvm_domain() && xen_disable_pv_nics != 0)
  return (ENXIO);

 if (!strcmp(xenbus_get_type(dev), "vif")) {
  device_set_desc(dev, "Virtual Network Interface");
  return (0);
 }

 return (ENXIO);
}
