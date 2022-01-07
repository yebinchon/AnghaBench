
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int phandle_t ;
typedef int mii_contype_t ;


 int MII_CONTYPE_UNKNOWN ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 int mii_fdt_contype_from_name (char*) ;

mii_contype_t
mii_fdt_get_contype(phandle_t macnode)
{
 char val[32];

 if (OF_getprop(macnode, "phy-mode", val, sizeof(val)) <= 0 &&
     OF_getprop(macnode, "phy-connection-type", val, sizeof(val)) <= 0) {
                return (MII_CONTYPE_UNKNOWN);
 }
 return (mii_fdt_contype_from_name(val));
}
