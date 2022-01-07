
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int me2 ;
typedef int me1 ;
typedef int device_t ;


 int pci_get_bus (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 scalar_t__ resource_find_dev (int*,char const*,int*,char*,int *) ;
 int resource_string_value (char const*,int,char*,char const**) ;
 int snprintf (char*,int,char*,int,int,int,...) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
pci_hint_device_unit(device_t dev, device_t child, const char *name, int *unitp)
{
 int line, unit;
 const char *at;
 char me1[24], me2[32];
 uint8_t b, s, f;
 uint32_t d;

 d = pci_get_domain(child);
 b = pci_get_bus(child);
 s = pci_get_slot(child);
 f = pci_get_function(child);
 snprintf(me1, sizeof(me1), "pci%u:%u:%u", b, s, f);
 snprintf(me2, sizeof(me2), "pci%u:%u:%u:%u", d, b, s, f);
 line = 0;
 while (resource_find_dev(&line, name, &unit, "at", ((void*)0)) == 0) {
  resource_string_value(name, unit, "at", &at);
  if (strcmp(at, me1) != 0 && strcmp(at, me2) != 0)
   continue;
  *unitp = unit;
  return;
 }
}
