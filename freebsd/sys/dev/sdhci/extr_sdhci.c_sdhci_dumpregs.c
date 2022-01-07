
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dummy; } ;


 int RD1 (struct sdhci_slot*,int ) ;
 int RD2 (struct sdhci_slot*,int ) ;
 int RD4 (struct sdhci_slot*,int ) ;
 int SDHCI_ACMD12_ERR ;
 int SDHCI_ADMA_ADDRESS_LO ;
 int SDHCI_ADMA_ERR ;
 int SDHCI_ARGUMENT ;
 int SDHCI_BLOCK_COUNT ;
 int SDHCI_BLOCK_GAP_CONTROL ;
 int SDHCI_BLOCK_SIZE ;
 int SDHCI_CAPABILITIES ;
 int SDHCI_CAPABILITIES2 ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_DMA_ADDRESS ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_HOST_VERSION ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_INT_STATUS ;
 int SDHCI_MAX_CURRENT ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_SLOT_INT_STATUS ;
 int SDHCI_TIMEOUT_CONTROL ;
 int SDHCI_TRANSFER_MODE ;
 int SDHCI_WAKE_UP_CONTROL ;
 int slot_printf (struct sdhci_slot*,char*,...) ;

__attribute__((used)) static void
sdhci_dumpregs(struct sdhci_slot *slot)
{

 slot_printf(slot,
     "============== REGISTER DUMP ==============\n");

 slot_printf(slot, "Sys addr: 0x%08x | Version:  0x%08x\n",
     RD4(slot, SDHCI_DMA_ADDRESS), RD2(slot, SDHCI_HOST_VERSION));
 slot_printf(slot, "Blk size: 0x%08x | Blk cnt:  0x%08x\n",
     RD2(slot, SDHCI_BLOCK_SIZE), RD2(slot, SDHCI_BLOCK_COUNT));
 slot_printf(slot, "Argument: 0x%08x | Trn mode: 0x%08x\n",
     RD4(slot, SDHCI_ARGUMENT), RD2(slot, SDHCI_TRANSFER_MODE));
 slot_printf(slot, "Present:  0x%08x | Host ctl: 0x%08x\n",
     RD4(slot, SDHCI_PRESENT_STATE), RD1(slot, SDHCI_HOST_CONTROL));
 slot_printf(slot, "Power:    0x%08x | Blk gap:  0x%08x\n",
     RD1(slot, SDHCI_POWER_CONTROL), RD1(slot, SDHCI_BLOCK_GAP_CONTROL));
 slot_printf(slot, "Wake-up:  0x%08x | Clock:    0x%08x\n",
     RD1(slot, SDHCI_WAKE_UP_CONTROL), RD2(slot, SDHCI_CLOCK_CONTROL));
 slot_printf(slot, "Timeout:  0x%08x | Int stat: 0x%08x\n",
     RD1(slot, SDHCI_TIMEOUT_CONTROL), RD4(slot, SDHCI_INT_STATUS));
 slot_printf(slot, "Int enab: 0x%08x | Sig enab: 0x%08x\n",
     RD4(slot, SDHCI_INT_ENABLE), RD4(slot, SDHCI_SIGNAL_ENABLE));
 slot_printf(slot, "AC12 err: 0x%08x | Host ctl2:0x%08x\n",
     RD2(slot, SDHCI_ACMD12_ERR), RD2(slot, SDHCI_HOST_CONTROL2));
 slot_printf(slot, "Caps:     0x%08x | Caps2:    0x%08x\n",
     RD4(slot, SDHCI_CAPABILITIES), RD4(slot, SDHCI_CAPABILITIES2));
 slot_printf(slot, "Max curr: 0x%08x | ADMA err: 0x%08x\n",
     RD4(slot, SDHCI_MAX_CURRENT), RD1(slot, SDHCI_ADMA_ERR));
 slot_printf(slot, "ADMA addr:0x%08x | Slot int: 0x%08x\n",
     RD4(slot, SDHCI_ADMA_ADDRESS_LO), RD2(slot, SDHCI_SLOT_INT_STATUS));

 slot_printf(slot,
     "===========================================\n");
}
