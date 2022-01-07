
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
typedef int rsdp ;
struct TYPE_6__ {int Revision; size_t Length; int Signature; } ;
typedef TYPE_1__ ACPI_TABLE_RSDP ;
typedef int ACPI_RSDP_COMMON ;


 int ACPI_RSDP_CHECKSUM_LENGTH ;
 int ACPI_RSDP_XCHECKSUM_LENGTH ;
 scalar_t__ acpi_checksum (TYPE_1__*,int ) ;
 TYPE_1__* acpi_map_physical (int ,size_t) ;
 int acpi_mem_fd ;
 scalar_t__ memcmp (int ,char*,int) ;
 int pread (int ,TYPE_1__*,int,int ) ;

__attribute__((used)) static ACPI_TABLE_RSDP *
acpi_get_rsdp(u_long addr)
{
 ACPI_TABLE_RSDP rsdp;
 size_t len;


 pread(acpi_mem_fd, &rsdp, 8, addr);
 if (memcmp(rsdp.Signature, "RSD PTR ", 8))
  return (((void*)0));


 pread(acpi_mem_fd, &rsdp, sizeof(rsdp), addr);


 if (acpi_checksum(&rsdp, ACPI_RSDP_CHECKSUM_LENGTH) != 0)
  return (((void*)0));


 if (rsdp.Revision >= 2 &&
     acpi_checksum(&rsdp, ACPI_RSDP_XCHECKSUM_LENGTH) != 0)
  return (((void*)0));


 if (rsdp.Revision == 0)
  len = sizeof(ACPI_RSDP_COMMON);
 else
  len = rsdp.Length;

 return (acpi_map_physical(addr, len));
}
