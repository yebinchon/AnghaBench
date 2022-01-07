
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mibname ;
typedef int dummy ;


 int mfi_unit ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

int
mfi_reconfig_supported(void)
{
 char mibname[64];
 size_t len;
 int dummy;

 len = sizeof(dummy);
 snprintf(mibname, sizeof(mibname), "dev.mfi.%d.delete_busy_volumes",
     mfi_unit);
 return (sysctlbyname(mibname, &dummy, &len, ((void*)0), 0) == 0);
}
