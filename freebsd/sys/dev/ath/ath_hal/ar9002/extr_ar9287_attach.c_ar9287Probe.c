
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 char const* AH_NULL ;
 scalar_t__ AR9287_DEVID_PCI ;
 scalar_t__ AR9287_DEVID_PCIE ;
 scalar_t__ ATHEROS_VENDOR_ID ;

__attribute__((used)) static const char*
ar9287Probe(uint16_t vendorid, uint16_t devid)
{
 if (vendorid == ATHEROS_VENDOR_ID) {
  if (devid == AR9287_DEVID_PCI)
   return "Atheros 9227";
  if (devid == AR9287_DEVID_PCIE)
   return "Atheros 9287";
 }
 return AH_NULL;
}
