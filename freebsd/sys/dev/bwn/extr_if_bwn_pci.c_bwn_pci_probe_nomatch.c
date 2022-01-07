
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 char* device_get_name (int ) ;
 int device_printf (int ,char*,char const*) ;

__attribute__((used)) static void
bwn_pci_probe_nomatch(device_t dev, device_t child)
{
 const char *name;

 name = device_get_name(child);
 if (name == ((void*)0))
  name = "unknown device";

 device_printf(dev, "<%s> (no driver attached)\n", name);
}
