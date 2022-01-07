
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
__attribute__((used)) static const char *
mmc_timing_to_string(enum mmc_bus_timing timing)
{

 switch (timing) {
 case 133:
  return ("normal speed");
 case 138:
  return ("high speed");
 case 130:
 case 129:
 case 128:
 case 131:
  return ("single data rate");
 case 132:
 case 137:
  return ("dual data rate");
 case 136:
  return ("HS200");
 case 135:
  return ("HS400");
 case 134:
  return ("HS400 with enhanced strobe");
 }
 return ("");
}
