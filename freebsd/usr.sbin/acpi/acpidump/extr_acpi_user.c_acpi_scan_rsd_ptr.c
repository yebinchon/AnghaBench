
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_long ;
typedef int ACPI_TABLE_RSDP ;


 int ACPI_EBDA_PTR_LOCATION ;
 int ACPI_EBDA_WINDOW_SIZE ;
 int ACPI_HI_RSDP_WINDOW_BASE ;
 int ACPI_HI_RSDP_WINDOW_SIZE ;
 int * acpi_get_rsdp (int) ;
 int acpi_mem_fd ;
 int pread (int ,int*,int,int) ;

__attribute__((used)) static ACPI_TABLE_RSDP *
acpi_scan_rsd_ptr(void)
{

 ACPI_TABLE_RSDP *rsdp;
 u_long addr, end;
 addr = ACPI_EBDA_PTR_LOCATION;
 pread(acpi_mem_fd, &addr, sizeof(uint16_t), addr);
 addr <<= 4;
 end = addr + ACPI_EBDA_WINDOW_SIZE;
 for (; addr < end; addr += 16)
  if ((rsdp = acpi_get_rsdp(addr)) != ((void*)0))
   return (rsdp);
 addr = ACPI_HI_RSDP_WINDOW_BASE;
 end = addr + ACPI_HI_RSDP_WINDOW_SIZE;
 for (; addr < end; addr += 16)
  if ((rsdp = acpi_get_rsdp(addr)) != ((void*)0))
   return (rsdp);

 return (((void*)0));
}
