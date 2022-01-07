
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ofw_bus_gen_child_pnpinfo_str (int ,int ,char*,size_t) ;
 int ofw_bus_get_node (int ) ;
 int pci_child_pnpinfo_str_method (int ,int ,char*,size_t) ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static int
ofw_pcibus_pnpinfo_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{

 pci_child_pnpinfo_str_method(dev, child, buf, buflen);
 if (ofw_bus_get_node(child) != -1) {
  strlcat(buf, " ", buflen);
  ofw_bus_gen_child_pnpinfo_str(dev, child, buf, buflen);
 }

 return (0);
}
