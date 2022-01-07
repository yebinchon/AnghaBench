
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int addr ;
typedef int ACPI_TABLE_RSDP ;


 int KENV_GET ;
 int * acpi_get_rsdp (scalar_t__) ;
 int * acpi_scan_rsd_ptr () ;
 int acpi_user_init () ;
 int hint_acpi_0_rsdp ;
 scalar_t__ kenv (int ,int ,char*,int) ;
 int machdep_acpi_root ;
 scalar_t__ strtoul (char*,int *,int ) ;
 scalar_t__ sysctlbyname (int ,scalar_t__*,size_t*,int *,int ) ;

ACPI_TABLE_RSDP *
acpi_find_rsd_ptr(void)
{
 ACPI_TABLE_RSDP *rsdp;
 char buf[20];
 u_long addr;
 size_t len;

 acpi_user_init();

 addr = 0;


 if (kenv(KENV_GET, hint_acpi_0_rsdp, buf, 20) > 0)
  addr = strtoul(buf, ((void*)0), 0);
 if (addr == 0) {
  len = sizeof(addr);
  if (sysctlbyname(machdep_acpi_root, &addr, &len, ((void*)0), 0) != 0)
   addr = 0;
 }
 if (addr != 0 && (rsdp = acpi_get_rsdp(addr)) != ((void*)0))
  return (rsdp);

 return (acpi_scan_rsd_ptr());
}
