
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint64_t ;
struct TYPE_2__ {int pc_dev; int pc_func; } ;
struct pci_conf {char* pd_name; int pd_unit; TYPE_1__ pc_sel; } ;
struct dmar_ctx_entry {int ctx1; int ctx2; } ;


 int DMAR_CTX1_ASR_MASK ;
 int DMAR_CTX1_FPD ;
 int DMAR_CTX1_P ;



 scalar_t__ DMAR_CTX2_GET_DID (int ) ;
 int DMAR_CTX_CNT ;
 int DMAR_PAGE_SIZE ;
 struct dmar_ctx_entry* acpi_map_physical (int ,int ) ;
 struct pci_conf* pci_find_conf (int,int,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_context_table(int segment, int bus, uint64_t base_addr)
{
 struct dmar_ctx_entry *ctx;
 struct pci_conf *conf;
 bool printed;
 int idx;

 printed = 0;
 ctx = acpi_map_physical(base_addr, DMAR_PAGE_SIZE);
 for (idx = 0; idx < DMAR_CTX_CNT; idx++) {
  if (!(ctx[idx].ctx1 & DMAR_CTX1_P))
   continue;
  if (!printed) {
   printf("\tPCI bus %d:\n", bus);
   printed = 1;
  }


  conf = pci_find_conf(segment, bus, 0, idx);
  if (conf == ((void*)0))
   conf = pci_find_conf(segment, bus, idx >> 3, idx & 7);
  if (conf != ((void*)0)) {
   printf("\t    { %d,%d }", conf->pc_sel.pc_dev,
       conf->pc_sel.pc_func);
   if (conf->pd_name[0] != '\0')
    printf(" (%s%lu)", conf->pd_name,
        conf->pd_unit);
  } else
   printf("\t    { %d,%d } (absent)", idx >> 3,
       idx & 7);
  if (ctx[idx].ctx1 & DMAR_CTX1_FPD)
   printf(" FPD");
  switch (ctx[idx].ctx1 & 0xc) {
  case 128:
   printf(" UNTR");
   break;
  case 129:
   printf(" TR");
   break;
  case 130:
   printf(" PASS");
   break;
  default:
   printf(" TT3?");
   break;
  }
  printf(" SLPT %#jx", (uintmax_t)(ctx[idx].ctx1 &
      DMAR_CTX1_ASR_MASK));
  printf(" domain %d", (int)DMAR_CTX2_GET_DID(ctx[idx].ctx2));
  printf("\n");
 }
}
