
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct dmar_root_entry {int r1; int r2; } ;


 int DMAR_GSTS_REG ;
 int DMAR_GSTS_RTPS ;
 int DMAR_GSTS_TES ;
 int DMAR_MAJOR_VER (int) ;
 int DMAR_MINOR_VER (int) ;
 int DMAR_ROOT_R1_CTP_MASK ;
 int DMAR_ROOT_R1_P ;
 int DMAR_RTADDR_REG ;
 int DMAR_RTADDR_RTA_MASK ;
 int DMAR_RTADDR_RTT ;
 int DMAR_VER_REG ;
 void* acpi_map_physical (int,int) ;
 int dump_context_table (int,int,int) ;
 int dump_ext_context_table (int,int,int,int) ;
 int printf (char*,char*,int,...) ;
 int read_4 (char*,int ) ;
 int read_8 (char*,int ) ;

__attribute__((used)) static void
handle_drhd(int segment, uint64_t base_addr)
{
 struct dmar_root_entry *root_table;
 char *regs;
 uint64_t rtaddr;
 uint32_t gsts, ver;
 bool extended;
 int bus;

 regs = acpi_map_physical(base_addr, 4096);

 ver = read_4(regs, DMAR_VER_REG);
 gsts = read_4(regs, DMAR_GSTS_REG);
 printf("drhd @ %#jx (version %d.%d) PCI segment %d%s:\n",
     (uintmax_t)base_addr, DMAR_MAJOR_VER(ver), DMAR_MINOR_VER(ver),
     segment, gsts & DMAR_GSTS_TES ? "" : " (disabled)");
 if ((gsts & (DMAR_GSTS_TES | DMAR_GSTS_RTPS)) !=
     (DMAR_GSTS_TES | DMAR_GSTS_RTPS))
  return;
 rtaddr = read_8(regs, DMAR_RTADDR_REG);
 extended = (rtaddr & DMAR_RTADDR_RTT) != 0;
 printf("    %sroot table @ 0x%#jx\n", extended ? "extended " : "",
     rtaddr & DMAR_RTADDR_RTA_MASK);
 root_table = acpi_map_physical(rtaddr & DMAR_RTADDR_RTA_MASK, 4096);
 for (bus = 0; bus < 255; bus++) {
  if (extended) {
  } else if (root_table[bus].r1 & DMAR_ROOT_R1_P)
   dump_context_table(segment, bus, root_table[bus].r1 &
       DMAR_ROOT_R1_CTP_MASK);
 }
}
