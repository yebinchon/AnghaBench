
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int mpr_describe_table (int ,int) ;
 int mpr_sasdev0_devtype ;
 int snprintf (char*,int,char*,int,char*,int ) ;

void
mpr_describe_devinfo(uint32_t devinfo, char *string, int len)
{
 snprintf(string, len, "%b,%s", devinfo,
     "\20" "\4SataHost" "\5SmpInit" "\6StpInit" "\7SspInit"
     "\10SataDev" "\11SmpTarg" "\12StpTarg" "\13SspTarg" "\14Direct"
     "\15LsiDev" "\16AtapiDev" "\17SepDev",
     mpr_describe_table(mpr_sasdev0_devtype, devinfo & 0x03));
}
