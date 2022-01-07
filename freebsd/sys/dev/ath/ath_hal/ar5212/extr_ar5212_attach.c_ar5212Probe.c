
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 char const* AH_NULL ;
 scalar_t__ ATHEROS_3COM2_VENDOR_ID ;
 scalar_t__ ATHEROS_3COM_VENDOR_ID ;
 scalar_t__ ATHEROS_VENDOR_ID ;

__attribute__((used)) static const char*
ar5212Probe(uint16_t vendorid, uint16_t devid)
{
 if (vendorid == ATHEROS_VENDOR_ID ||
     vendorid == ATHEROS_3COM_VENDOR_ID ||
     vendorid == ATHEROS_3COM2_VENDOR_ID) {
  switch (devid) {
  case 128:
   return "Atheros 5212 (FPGA)";
  case 130:
  case 129:
  case 131:
   return "Atheros 5212";
  case 135:
   return "Atheros 2413";
  case 134:
   return "Atheros 2417";
  case 133:
   return "Atheros 5413";
  case 132:
   return "Atheros 5424/2424";
  }
 }
 return AH_NULL;
}
