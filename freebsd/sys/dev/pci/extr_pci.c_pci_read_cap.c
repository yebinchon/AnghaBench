
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_19__ {int ht_slave; int ht_msimap; int ht_msictrl; int ht_msiaddr; } ;
struct TYPE_18__ {int ea_location; } ;
struct TYPE_17__ {int pcie_location; int pcie_type; } ;
struct TYPE_16__ {int pcix_location; } ;
struct TYPE_15__ {int vpd_reg; } ;
struct TYPE_14__ {int msix_location; int msix_ctrl; int msix_table_offset; int msix_pba_offset; void* msix_pba_bar; void* msix_table_bar; int msix_msgnum; } ;
struct TYPE_13__ {int msi_location; int msi_ctrl; int msi_msgnum; } ;
struct TYPE_12__ {int pp_cap; int pp_data; int pp_bse; int pp_status; } ;
struct TYPE_20__ {int hdrtype; int subvendor; int subdevice; TYPE_8__ ht; int func; int slot; int bus; int domain; TYPE_7__ ea; TYPE_6__ pcie; TYPE_5__ pcix; TYPE_4__ vpd; TYPE_3__ msix; TYPE_2__ msi; TYPE_1__ pp; } ;
typedef TYPE_9__ pcicfgregs ;
typedef int device_t ;


 int MSI_INTEL_ADDR_BASE ;
 int PCICAP_ID ;
 int PCICAP_NEXTPTR ;
 int PCIEM_FLAGS_TYPE ;
 int PCIER_FLAGS ;
 int PCIM_HDRTYPE ;




 int PCIM_HTCAP_SLAVE ;
 int PCIM_HTCMD_CAP_MASK ;
 int PCIM_HTCMD_MSI_ENABLE ;
 int PCIM_HTCMD_MSI_FIXED ;
 int PCIM_MSICTRL_MMC_MASK ;
 int PCIM_MSIXCTRL_TABLE_SIZE ;
 int PCIM_MSIX_BIR_MASK ;
 void* PCIR_BAR (int) ;
 int PCIR_CAP_PTR ;
 int PCIR_CAP_PTR_2 ;
 int PCIR_HTMSI_ADDRESS_HI ;
 int PCIR_HTMSI_ADDRESS_LO ;
 int PCIR_HT_COMMAND ;
 int PCIR_MSIX_CTRL ;
 int PCIR_MSIX_PBA ;
 int PCIR_MSIX_TABLE ;
 int PCIR_MSI_CTRL ;
 int PCIR_POWER_BSE ;
 int PCIR_POWER_CAP ;
 int PCIR_POWER_DATA ;
 int PCIR_POWER_STATUS ;
 int PCIR_SUBVENDCAP_ID ;
 int REG (int,int) ;
 int WREG (int,int,int) ;
 int device_printf (int ,char*,int ,int ,int ,int ,...) ;
 int pci_ea_fill_info (int ,TYPE_9__*) ;
 int pcie_chipset ;
 int pcix_chipset ;
 int printf (char*,int) ;

__attribute__((used)) static void
pci_read_cap(device_t pcib, pcicfgregs *cfg)
{



 uint64_t addr;

 uint32_t val;
 int ptr, nextptr, ptrptr;

 switch (cfg->hdrtype & PCIM_HDRTYPE) {
 case 138:
 case 140:
  ptrptr = PCIR_CAP_PTR;
  break;
 case 139:
  ptrptr = PCIR_CAP_PTR_2;
  break;
 default:
  return;
 }
 nextptr = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptrptr, 1);




 while (nextptr != 0) {

  if (nextptr > 255) {
   printf("illegal PCI extended capability offset %d\n",
       nextptr);
   return;
  }

  ptr = nextptr;
  nextptr = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCICAP_NEXTPTR, 1);


  switch (PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCICAP_ID, 1)) {
  case 130:
   if (cfg->pp.pp_cap == 0) {
    cfg->pp.pp_cap = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_POWER_CAP, 2);
    cfg->pp.pp_status = ptr + PCIR_POWER_STATUS;
    cfg->pp.pp_bse = ptr + PCIR_POWER_BSE;
    if ((nextptr - ptr) > PCIR_POWER_DATA)
     cfg->pp.pp_data = ptr + PCIR_POWER_DATA;
   }
   break;
  case 134:

   val = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_HT_COMMAND, 2);

   if ((val & 0xe000) == PCIM_HTCAP_SLAVE)
    cfg->ht.ht_slave = ptr;


   switch (val & PCIM_HTCMD_CAP_MASK) {
   case 137:
    if (!(val & PCIM_HTCMD_MSI_FIXED)) {

     addr = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_HTMSI_ADDRESS_HI, 4);

     addr <<= 32;
     addr |= PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_HTMSI_ADDRESS_LO, 4);

     if (addr != MSI_INTEL_ADDR_BASE)
      device_printf(pcib,
     "HT device at pci%d:%d:%d:%d has non-default MSI window 0x%llx\n",
          cfg->domain, cfg->bus,
          cfg->slot, cfg->func,
          (long long)addr);
    } else
     addr = MSI_INTEL_ADDR_BASE;

    cfg->ht.ht_msimap = ptr;
    cfg->ht.ht_msictrl = val;
    cfg->ht.ht_msiaddr = addr;
    break;
   }

   break;
  case 133:
   cfg->msi.msi_location = ptr;
   cfg->msi.msi_ctrl = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_MSI_CTRL, 2);
   cfg->msi.msi_msgnum = 1 << ((cfg->msi.msi_ctrl &
           PCIM_MSICTRL_MMC_MASK)>>1);
   break;
  case 132:
   cfg->msix.msix_location = ptr;
   cfg->msix.msix_ctrl = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_MSIX_CTRL, 2);
   cfg->msix.msix_msgnum = (cfg->msix.msix_ctrl &
       PCIM_MSIXCTRL_TABLE_SIZE) + 1;
   val = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_MSIX_TABLE, 4);
   cfg->msix.msix_table_bar = PCIR_BAR(val &
       PCIM_MSIX_BIR_MASK);
   cfg->msix.msix_table_offset = val & ~PCIM_MSIX_BIR_MASK;
   val = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_MSIX_PBA, 4);
   cfg->msix.msix_pba_bar = PCIR_BAR(val &
       PCIM_MSIX_BIR_MASK);
   cfg->msix.msix_pba_offset = val & ~PCIM_MSIX_BIR_MASK;
   break;
  case 128:
   cfg->vpd.vpd_reg = ptr;
   break;
  case 129:

   if ((cfg->hdrtype & PCIM_HDRTYPE) ==
       140) {
    val = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIR_SUBVENDCAP_ID, 4);
    cfg->subvendor = val & 0xffff;
    cfg->subdevice = val >> 16;
   }
   break;
  case 131:







   if ((cfg->hdrtype & PCIM_HDRTYPE) ==
       140)
    pcix_chipset = 1;
   cfg->pcix.pcix_location = ptr;
   break;
  case 135:




   pcie_chipset = 1;
   cfg->pcie.pcie_location = ptr;
   val = PCIB_READ_CONFIG(pcib, cfg->bus, cfg->slot, cfg->func, ptr + PCIER_FLAGS, 2);
   cfg->pcie.pcie_type = val & PCIEM_FLAGS_TYPE;
   break;
  case 136:
   cfg->ea.ea_location = ptr;
   pci_ea_fill_info(pcib, cfg);
   break;
  default:
   break;
  }
 }
}
