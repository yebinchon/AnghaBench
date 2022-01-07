
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int typebuf ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
devscope_type2str(int type)
{
 static char typebuf[16];

 switch (type) {
 case 1:
  return ("PCI Endpoint Device");
 case 2:
  return ("PCI Sub-Hierarchy");
 case 3:
  return ("IOAPIC");
 case 4:
  return ("HPET");
 default:
  snprintf(typebuf, sizeof(typebuf), "%d", type);
  return (typebuf);
 }
}
