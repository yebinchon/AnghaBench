
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct mrsas_softc {int mrsas_dev; } ;


 int DELAY (int) ;
 int ENODEV ;
 int MFI_INIT_CLEAR_HANDSHAKE ;
 int MFI_INIT_HOTPLUG ;
 int MFI_RESET_FLAGS ;







 int MFI_STATE_MASK ;

 int MFI_STATE_READY ;


 int MRSAS_OCR ;
 int MRSAS_RESET_WAIT_TIME ;
 int device_printf (int ,char*,...) ;
 int doorbell ;
 int mrsas_disable_intr (struct mrsas_softc*) ;
 int mrsas_dprint (struct mrsas_softc*,int ,char*) ;
 int mrsas_read_reg_with_retries (struct mrsas_softc*,int ) ;
 int mrsas_reg_set ;
 int mrsas_write_reg (struct mrsas_softc*,int ,int) ;
 int offsetof (int ,int ) ;
 int outbound_scratch_pad ;

int
mrsas_transition_to_ready(struct mrsas_softc *sc, int ocr)
{
 int i;
 u_int8_t max_wait;
 u_int32_t val, fw_state;
 u_int32_t cur_state;
 u_int32_t abs_state, curr_abs_state;

 val = mrsas_read_reg_with_retries(sc, offsetof(mrsas_reg_set, outbound_scratch_pad));
 fw_state = val & MFI_STATE_MASK;
 max_wait = MRSAS_RESET_WAIT_TIME;

 if (fw_state != MFI_STATE_READY)
  device_printf(sc->mrsas_dev, "Waiting for FW to come to ready state\n");

 while (fw_state != MFI_STATE_READY) {
  abs_state = mrsas_read_reg_with_retries(sc, offsetof(mrsas_reg_set, outbound_scratch_pad));
  switch (fw_state) {
  case 134:
   device_printf(sc->mrsas_dev, "FW is in FAULT state!!\n");
   if (ocr) {
    cur_state = 134;
    break;
   } else
    return -ENODEV;
  case 128:

   mrsas_write_reg(sc, offsetof(mrsas_reg_set, doorbell),
       MFI_INIT_CLEAR_HANDSHAKE | MFI_INIT_HOTPLUG);
   cur_state = 128;
   break;
  case 136:
   mrsas_write_reg(sc, offsetof(mrsas_reg_set, doorbell),
       MFI_INIT_HOTPLUG);
   cur_state = 136;
   break;
  case 130:




   mrsas_disable_intr(sc);
   mrsas_write_reg(sc, offsetof(mrsas_reg_set, doorbell), MFI_RESET_FLAGS);
   for (i = 0; i < max_wait * 1000; i++) {
    if (mrsas_read_reg_with_retries(sc, offsetof(mrsas_reg_set, doorbell)) & 1)
     DELAY(1000);
    else
     break;
   }
   cur_state = 130;
   break;
  case 129:




   cur_state = 129;
   break;
  case 137:
   cur_state = 137;
   break;
  case 132:
   cur_state = 132;
   break;
  case 131:
   cur_state = 131;
   break;
  case 135:
   cur_state = 135;
   break;
  case 133:
   cur_state = 133;
   break;
  default:
   device_printf(sc->mrsas_dev, "Unknown state 0x%x\n", fw_state);
   return -ENODEV;
  }




  for (i = 0; i < (max_wait * 1000); i++) {
   fw_state = (mrsas_read_reg_with_retries(sc, offsetof(mrsas_reg_set,
       outbound_scratch_pad)) & MFI_STATE_MASK);
   curr_abs_state = mrsas_read_reg_with_retries(sc, offsetof(mrsas_reg_set,
       outbound_scratch_pad));
   if (abs_state == curr_abs_state)
    DELAY(1000);
   else
    break;
  }




  if (curr_abs_state == abs_state) {
   device_printf(sc->mrsas_dev, "FW state [%d] hasn't changed "
       "in %d secs\n", fw_state, max_wait);
   return -ENODEV;
  }
 }
 mrsas_dprint(sc, MRSAS_OCR, "FW now in Ready state\n");
 return 0;
}
