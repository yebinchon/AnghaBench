
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_get_vpd_readonly (int ,char const*,char const**) ;

__attribute__((used)) static int
vga_pci_get_vpd_readonly(device_t dev, device_t child, const char *kw,
    const char **vptr)
{

 return (pci_get_vpd_readonly(dev, kw, vptr));
}
