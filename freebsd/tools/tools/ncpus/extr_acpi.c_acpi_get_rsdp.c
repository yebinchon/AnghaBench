
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ACPIrsdp {scalar_t__ revision; size_t length; int signature; } ;
typedef int rsdp ;


 scalar_t__ acpi_checksum (struct ACPIrsdp*,int) ;
 struct ACPIrsdp* acpi_map_physical (int ,size_t) ;
 int acpi_mem_fd ;
 scalar_t__ memcmp (int ,char*,int) ;
 int pread (int ,struct ACPIrsdp*,int,int ) ;

__attribute__((used)) static struct ACPIrsdp *
acpi_get_rsdp(u_long addr)
{
 struct ACPIrsdp rsdp;
 size_t len;


 pread(acpi_mem_fd, &rsdp, 8, addr);
 if (memcmp(rsdp.signature, "RSD PTR ", 8))
  return (((void*)0));


 pread(acpi_mem_fd, &rsdp, sizeof(rsdp), addr);


 if (acpi_checksum(&rsdp, 20))
  return (((void*)0));


 if (rsdp.revision == 0)
  len = 20;
 else
  len = rsdp.length;



 return (acpi_map_physical(addr, len));
}
