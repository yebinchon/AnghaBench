
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mfi_softc {int (* mfi_read_fw_status ) (struct mfi_softc*) ;int mfi_flags; int mfi_dev; } ;


 int DELAY (int) ;
 int ENXIO ;
 int MFI_FLAGS_SKINNY ;
 int MFI_FLAGS_TBOLT ;
 int MFI_FWINIT_CLEAR_HANDSHAKE ;
 int MFI_FWINIT_HOTPLUG ;
 int MFI_FWINIT_READY ;







 int MFI_FWSTATE_MASK ;

 int MFI_FWSTATE_READY ;


 int MFI_IDB ;
 int MFI_RESET_WAIT_TIME ;
 int MFI_SKINNY_IDB ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int stub1 (struct mfi_softc*) ;
 int stub2 (struct mfi_softc*) ;

int
mfi_transition_firmware(struct mfi_softc *sc)
{
 uint32_t fw_state, cur_state;
 int max_wait, i;
 uint32_t cur_abs_reg_val = 0;
 uint32_t prev_abs_reg_val = 0;

 cur_abs_reg_val = sc->mfi_read_fw_status(sc);
 fw_state = cur_abs_reg_val & MFI_FWSTATE_MASK;
 while (fw_state != MFI_FWSTATE_READY) {
  if (bootverbose)
   device_printf(sc->mfi_dev, "Waiting for firmware to "
   "become ready\n");
  cur_state = fw_state;
  switch (fw_state) {
  case 134:
   device_printf(sc->mfi_dev, "Firmware fault\n");
   return (ENXIO);
  case 128:
   if (sc->mfi_flags & MFI_FLAGS_SKINNY || sc->mfi_flags & MFI_FLAGS_TBOLT)
       MFI_WRITE4(sc, MFI_SKINNY_IDB, MFI_FWINIT_CLEAR_HANDSHAKE);
   else
       MFI_WRITE4(sc, MFI_IDB, MFI_FWINIT_CLEAR_HANDSHAKE);
   max_wait = MFI_RESET_WAIT_TIME;
   break;
  case 130:
   if (sc->mfi_flags & MFI_FLAGS_SKINNY || sc->mfi_flags & MFI_FLAGS_TBOLT)
       MFI_WRITE4(sc, MFI_SKINNY_IDB, 7);
   else
       MFI_WRITE4(sc, MFI_IDB, MFI_FWINIT_READY);
   max_wait = MFI_RESET_WAIT_TIME;
   break;
  case 129:
  case 137:
   max_wait = MFI_RESET_WAIT_TIME;
   break;
  case 131:
   max_wait = MFI_RESET_WAIT_TIME;
   break;
  case 132:
  case 133:
   max_wait = MFI_RESET_WAIT_TIME;
   break;
  case 135:
   max_wait = MFI_RESET_WAIT_TIME;
   prev_abs_reg_val = cur_abs_reg_val;
   break;
  case 136:
   if (sc->mfi_flags & MFI_FLAGS_SKINNY || sc->mfi_flags & MFI_FLAGS_TBOLT)
       MFI_WRITE4(sc, MFI_SKINNY_IDB, MFI_FWINIT_HOTPLUG);
   else
       MFI_WRITE4(sc, MFI_IDB, MFI_FWINIT_HOTPLUG);
   max_wait = MFI_RESET_WAIT_TIME;
   break;
  default:
   device_printf(sc->mfi_dev, "Unknown firmware state %#x\n",
       fw_state);
   return (ENXIO);
  }
  for (i = 0; i < (max_wait * 10); i++) {
   cur_abs_reg_val = sc->mfi_read_fw_status(sc);
   fw_state = cur_abs_reg_val & MFI_FWSTATE_MASK;
   if (fw_state == cur_state)
    DELAY(100000);
   else
    break;
  }
  if (fw_state == 135) {

   if (prev_abs_reg_val != cur_abs_reg_val) {
    continue;
   }
  }
  if (fw_state == cur_state) {
   device_printf(sc->mfi_dev, "Firmware stuck in state "
       "%#x\n", fw_state);
   return (ENXIO);
  }
 }
 return (0);
}
