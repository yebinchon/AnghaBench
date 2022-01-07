
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 char const* AH_NULL ;
 scalar_t__ AR5416_AR9130_DEVID ;
 scalar_t__ ATHEROS_VENDOR_ID ;

__attribute__((used)) static const char*
ar9130Probe(uint16_t vendorid, uint16_t devid)
{
        if (vendorid == ATHEROS_VENDOR_ID && devid == AR5416_AR9130_DEVID)
                return "Atheros 9130";
 return AH_NULL;
}
