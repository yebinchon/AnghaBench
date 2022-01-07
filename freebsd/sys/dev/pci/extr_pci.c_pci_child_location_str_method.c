
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_get_bus (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int snprintf (char*,size_t,char*,int,int,int,int,int,int) ;

int
pci_child_location_str_method(device_t dev, device_t child, char *buf,
    size_t buflen)
{

 snprintf(buf, buflen, "slot=%d function=%d dbsf=pci%d:%d:%d:%d",
     pci_get_slot(child), pci_get_function(child), pci_get_domain(child),
     pci_get_bus(child), pci_get_slot(child), pci_get_function(child));
 return (0);
}
