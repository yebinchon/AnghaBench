
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_long ;
struct ACPIsdt {int len; int signature; } ;
struct ACPIrsdp {int revision; int xsdt_addr; int rsdt_addr; } ;
typedef int addr ;


 int acpi0_present () ;
 scalar_t__ acpi_checksum (struct ACPIsdt*,int ) ;
 struct ACPIrsdp* acpi_get_rsdp (int ) ;
 int acpi_handle_rsdt (struct ACPIsdt*) ;
 scalar_t__ acpi_map_sdt (int ) ;
 int acpi_user_init () ;
 int addr_size ;
 int errx (int,char*) ;
 int machdep_acpi_root ;
 scalar_t__ memcmp (int ,char*,int) ;
 int ncpu ;
 scalar_t__ sysctlbyname (int ,int *,size_t*,int *,int ) ;
 int warnx (char*,...) ;

int
acpi_detect(void)
{
 struct ACPIrsdp *rp;
 struct ACPIsdt *rsdp;
 u_long addr;
 size_t len;

 if (!acpi0_present()) {
  warnx("no acpi0 device located");
  return -1;
 }

 acpi_user_init();


 len = sizeof(addr);
 if (sysctlbyname(machdep_acpi_root, &addr, &len, ((void*)0), 0) != 0) {
  warnx("cannot find ACPI information");
  return -1;
 }
 rp = acpi_get_rsdp(addr);
 if (rp == ((void*)0)) {
  warnx("cannot find ACPI information: sysctl %s does not point to RSDP",
   machdep_acpi_root);
  return -1;
 }
 if (rp->revision < 2) {
  rsdp = (struct ACPIsdt *)acpi_map_sdt(rp->rsdt_addr);
  if (memcmp(rsdp->signature, "RSDT", 4) != 0 ||
      acpi_checksum(rsdp, rsdp->len) != 0)
   errx(1, "RSDT is corrupted");
  addr_size = sizeof(uint32_t);
 } else {
  rsdp = (struct ACPIsdt *)acpi_map_sdt(rp->xsdt_addr);
  if (memcmp(rsdp->signature, "XSDT", 4) != 0 ||
      acpi_checksum(rsdp, rsdp->len) != 0)
   errx(1, "XSDT is corrupted");
  addr_size = sizeof(uint64_t);
 }
 ncpu = 0;
 acpi_handle_rsdt(rsdp);
 return (ncpu == 0 ? 1 : ncpu);
}
