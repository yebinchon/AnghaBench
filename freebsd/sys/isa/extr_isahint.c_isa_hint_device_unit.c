
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 char* device_get_name (int ) ;
 char* device_get_nameunit (int ) ;
 scalar_t__ isa_match_resource_hint (int ,int ,long) ;
 scalar_t__ resource_find_dev (int*,char const*,int*,char*,int *) ;
 scalar_t__ resource_long_value (char const*,int,char*,long*) ;
 int resource_string_value (char const*,int,char*,char const**) ;
 scalar_t__ strcmp (char const*,char*) ;

void
isa_hint_device_unit(device_t bus, device_t child, const char *name, int *unitp)
{
 const char *s;
 long value;
 int line, matches, unit;

 line = 0;
 for (;;) {
  if (resource_find_dev(&line, name, &unit, "at", ((void*)0)) != 0)
   break;


  resource_string_value(name, unit, "at", &s);
  if (!(strcmp(s, device_get_nameunit(bus)) == 0 ||
      strcmp(s, device_get_name(bus)) == 0))
   continue;
  matches = 0;
  if (resource_long_value(name, unit, "port", &value) == 0) {
   if (strcmp(name, "fdc") == 0)
    value += 2;
   if (isa_match_resource_hint(child, SYS_RES_IOPORT,
       value))
    matches++;
   else
    continue;
  }
  if (resource_long_value(name, unit, "maddr", &value) == 0) {
   if (isa_match_resource_hint(child, SYS_RES_MEMORY,
       value))
    matches++;
   else
    continue;
  }
  if (matches > 0)
   goto matched;
  if (resource_long_value(name, unit, "irq", &value) == 0) {
   if (isa_match_resource_hint(child, SYS_RES_IRQ, value))
    matches++;
   else
    continue;
  }
  if (resource_long_value(name, unit, "drq", &value) == 0) {
   if (isa_match_resource_hint(child, SYS_RES_DRQ, value))
    matches++;
   else
    continue;
  }

 matched:
  if (matches > 0) {

   *unitp = unit;
   break;
  }
 }
}
