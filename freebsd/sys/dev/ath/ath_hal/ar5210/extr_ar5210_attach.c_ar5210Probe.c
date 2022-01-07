
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 char const* AH_NULL ;
 scalar_t__ AR5210_DEFAULT ;
 scalar_t__ AR5210_PROD ;
 scalar_t__ ATHEROS_VENDOR_ID ;

__attribute__((used)) static const char*
ar5210Probe(uint16_t vendorid, uint16_t devid)
{
 if (vendorid == ATHEROS_VENDOR_ID &&
     (devid == AR5210_PROD || devid == AR5210_DEFAULT))
  return "Atheros 5210";
 return AH_NULL;
}
