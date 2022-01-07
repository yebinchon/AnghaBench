
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 char const* AH_NULL ;
 scalar_t__ ATHEROS_VENDOR_ID ;

__attribute__((used)) static const char*
ar5312Probe(uint16_t vendorid, uint16_t devid)
{
 if (vendorid == ATHEROS_VENDOR_ID) {
  switch (devid) {
  case 129:
  case 128:
   return "Atheros 5312 WiSoC";
  case 136:
   return "Atheros 2313 WiSoC";
  case 135:
  case 134:
   return "Atheros 2315 WiSoC";
  case 133:
  case 132:
   return "Atheros 2317 WiSoC";
  case 131:
   return "Atheros 2413";
  case 130:
   return "Atheros 2417";
  }
 }
 return AH_NULL;
}
