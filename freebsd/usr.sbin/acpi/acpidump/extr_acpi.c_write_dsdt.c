
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_9__ {int Length; scalar_t__ Checksum; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 char* ACPI_SIG_SSDT ;
 scalar_t__ acpi_checksum (TYPE_1__*,int) ;
 TYPE_1__* sdt_from_rsdt (TYPE_1__*,char*,TYPE_1__*) ;
 int write (int,TYPE_1__*,int) ;

__attribute__((used)) static int
write_dsdt(int fd, ACPI_TABLE_HEADER *rsdt, ACPI_TABLE_HEADER *dsdt)
{
 ACPI_TABLE_HEADER sdt;
 ACPI_TABLE_HEADER *ssdt;
 uint8_t sum;


 sdt = *dsdt;
 if (rsdt != ((void*)0)) {
  sdt.Checksum = 0;
  sum = acpi_checksum(dsdt + 1, dsdt->Length -
      sizeof(ACPI_TABLE_HEADER));
  ssdt = sdt_from_rsdt(rsdt, ACPI_SIG_SSDT, ((void*)0));
  while (ssdt != ((void*)0)) {
   sdt.Length += ssdt->Length - sizeof(ACPI_TABLE_HEADER);
   sum += acpi_checksum(ssdt + 1,
       ssdt->Length - sizeof(ACPI_TABLE_HEADER));
   ssdt = sdt_from_rsdt(rsdt, ACPI_SIG_SSDT, ssdt);
  }
  sum += acpi_checksum(&sdt, sizeof(ACPI_TABLE_HEADER));
  sdt.Checksum -= sum;
 }


 write(fd, &sdt, sizeof(ACPI_TABLE_HEADER));
 write(fd, dsdt + 1, dsdt->Length - sizeof(ACPI_TABLE_HEADER));


 if (rsdt != ((void*)0)) {
  ssdt = sdt_from_rsdt(rsdt, "SSDT", ((void*)0));
  while (ssdt != ((void*)0)) {
   write(fd, ssdt + 1, ssdt->Length -
       sizeof(ACPI_TABLE_HEADER));
   ssdt = sdt_from_rsdt(rsdt, "SSDT", ssdt);
  }
 }
 return (0);
}
