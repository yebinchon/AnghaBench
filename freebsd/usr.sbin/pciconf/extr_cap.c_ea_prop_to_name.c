
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
__attribute__((used)) static const char *
ea_prop_to_name(uint8_t prop)
{

 switch (prop) {
 case 133:
  return "Non-Prefetchable Memory";
 case 132:
  return "Prefetchable Memory";
 case 135:
  return "I/O Space";
 case 128:
  return "VF Prefetchable Memory";
 case 129:
  return "VF Non-Prefetchable Memory";
 case 137:
  return "Bridge Non-Prefetchable Memory";
 case 136:
  return "Bridge Prefetchable Memory";
 case 138:
  return "Bridge I/O Space";
 case 131:
  return "Reserved Memory";
 case 134:
  return "Reserved I/O Space";
 case 130:
  return "Unavailable";
 default:
  return "Reserved";
 }
}
