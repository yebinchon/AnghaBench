
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct ACPIsdt {int len; int signature; scalar_t__ body; } ;


 int SIZEOF_SDT_HDR ;
 scalar_t__ acpi_checksum (struct ACPIsdt*,int) ;
 int acpi_handle_apic (struct ACPIsdt*) ;
 scalar_t__ acpi_map_sdt (int ) ;
 int addr_size ;
 int assert (int ) ;
 int le32dec (char*) ;
 int le64dec (char*) ;
 int memcmp (int ,char*,int) ;
 int warnx (char*,int,int ) ;

__attribute__((used)) static void
acpi_handle_rsdt(struct ACPIsdt *rsdp)
{
 struct ACPIsdt *sdp;
 vm_offset_t addr;
 int entries, i;

 entries = (rsdp->len - SIZEOF_SDT_HDR) / addr_size;
 for (i = 0; i < entries; i++) {
  switch (addr_size) {
  case 4:
   addr = le32dec((char*)rsdp->body + i * addr_size);
   break;
  case 8:
   addr = le64dec((char*)rsdp->body + i * addr_size);
   break;
  default:
   assert((addr = 0));
  }

  sdp = (struct ACPIsdt *)acpi_map_sdt(addr);
  if (acpi_checksum(sdp, sdp->len)) {




   continue;
  }
  if (!memcmp(sdp->signature, "APIC", 4))
   acpi_handle_apic(sdp);
 }
}
