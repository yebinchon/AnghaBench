
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
ioapic_bus_string(int bus_type)
{

 switch (bus_type) {
 case 129:
  return ("ISA");
 case 130:
  return ("EISA");
 case 128:
  return ("PCI");
 default:
  return ("unknown");
 }
}
