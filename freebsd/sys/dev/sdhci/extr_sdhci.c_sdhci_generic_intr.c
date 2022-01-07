
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct sdhci_slot {int intmask; int retune_req; TYPE_1__* curcmd; } ;
struct TYPE_2__ {int error; } ;


 int MMC_ERR_BADCRC ;
 int RD2 (struct sdhci_slot*,int ) ;
 int RD4 (struct sdhci_slot*,int ) ;
 int SDHCI_ACMD12_ERR ;
 int SDHCI_INT_ACMD12ERR ;
 int SDHCI_INT_BUS_POWER ;
 int SDHCI_INT_CARD_INSERT ;
 int SDHCI_INT_CARD_REMOVE ;
 int SDHCI_INT_CMD_ERROR_MASK ;
 int SDHCI_INT_CMD_MASK ;
 int SDHCI_INT_DATA_MASK ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_INT_ERROR ;
 int SDHCI_INT_RETUNE ;
 int SDHCI_INT_STATUS ;
 int SDHCI_INT_TUNEERR ;
 int SDHCI_LOCK (struct sdhci_slot*) ;
 int SDHCI_RETUNE_REQ_NEEDED ;
 int SDHCI_RETUNE_REQ_RESET ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_UNLOCK (struct sdhci_slot*) ;
 int WR4 (struct sdhci_slot*,int ,int) ;
 scalar_t__ __predict_false (int) ;
 int sdhci_acmd_irq (struct sdhci_slot*,int ) ;
 int sdhci_cmd_irq (struct sdhci_slot*,int) ;
 int sdhci_data_irq (struct sdhci_slot*,int) ;
 int sdhci_debug ;
 int sdhci_dumpregs (struct sdhci_slot*) ;
 int sdhci_finish_command (struct sdhci_slot*) ;
 int sdhci_handle_card_present_locked (struct sdhci_slot*,int) ;
 int slot_printf (struct sdhci_slot*,char*,...) ;

void
sdhci_generic_intr(struct sdhci_slot *slot)
{
 uint32_t intmask, present;
 uint16_t val16;

 SDHCI_LOCK(slot);

 intmask = RD4(slot, SDHCI_INT_STATUS);
 if (intmask == 0 || intmask == 0xffffffff) {
  SDHCI_UNLOCK(slot);
  return;
 }
 if (__predict_false(sdhci_debug > 2))
  slot_printf(slot, "Interrupt %#x\n", intmask);


 if (__predict_false(intmask & SDHCI_INT_TUNEERR)) {
  WR4(slot, SDHCI_INT_STATUS, SDHCI_INT_TUNEERR);
  slot_printf(slot, "Tuning error indicated\n");
  slot->retune_req |= SDHCI_RETUNE_REQ_RESET;
  if (slot->curcmd) {
   slot->curcmd->error = MMC_ERR_BADCRC;
   sdhci_finish_command(slot);
  }
 }

 if (__predict_false(intmask & SDHCI_INT_RETUNE))
  slot->retune_req |= SDHCI_RETUNE_REQ_NEEDED;

 if (intmask & (SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE)) {
  present = (intmask & SDHCI_INT_CARD_INSERT) != 0;
  slot->intmask &=
      ~(SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE);
  slot->intmask |= present ? SDHCI_INT_CARD_REMOVE :
      SDHCI_INT_CARD_INSERT;
  WR4(slot, SDHCI_INT_ENABLE, slot->intmask);
  WR4(slot, SDHCI_SIGNAL_ENABLE, slot->intmask);
  WR4(slot, SDHCI_INT_STATUS, intmask &
      (SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE));
  sdhci_handle_card_present_locked(slot, present);
 }

 if (intmask & SDHCI_INT_CMD_MASK) {
  WR4(slot, SDHCI_INT_STATUS, intmask & SDHCI_INT_CMD_MASK);
  sdhci_cmd_irq(slot, intmask & SDHCI_INT_CMD_MASK);
 }

 if (intmask & SDHCI_INT_DATA_MASK) {
  WR4(slot, SDHCI_INT_STATUS, intmask & SDHCI_INT_DATA_MASK);

  if ((intmask & SDHCI_INT_CMD_ERROR_MASK) == 0)
   sdhci_data_irq(slot, intmask & SDHCI_INT_DATA_MASK);
 }

 if (intmask & SDHCI_INT_ACMD12ERR) {

  val16 = RD2(slot, SDHCI_ACMD12_ERR);
  WR4(slot, SDHCI_INT_STATUS, SDHCI_INT_ACMD12ERR);
  sdhci_acmd_irq(slot, val16);
 }

 if (intmask & SDHCI_INT_BUS_POWER) {
  WR4(slot, SDHCI_INT_STATUS, SDHCI_INT_BUS_POWER);
  slot_printf(slot, "Card is consuming too much power!\n");
 }
 intmask &= ~(SDHCI_INT_ERROR | SDHCI_INT_TUNEERR | SDHCI_INT_RETUNE |
     SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE | SDHCI_INT_CMD_MASK |
     SDHCI_INT_DATA_MASK | SDHCI_INT_ACMD12ERR | SDHCI_INT_BUS_POWER);

 if (intmask) {
  WR4(slot, SDHCI_INT_STATUS, intmask);
  slot_printf(slot, "Unexpected interrupt 0x%08x.\n",
      intmask);
  sdhci_dumpregs(slot);
 }

 SDHCI_UNLOCK(slot);
}
