
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct bwi_softc {int sc_dev; } ;
struct bwi_mac {TYPE_2__* mac_pcm; TYPE_1__* mac_ucode; struct bwi_softc* mac_sc; } ;
struct TYPE_4__ {int datasize; scalar_t__ data; } ;
struct TYPE_3__ {int datasize; scalar_t__ data; } ;


 int BWI_ALL_INTRS ;
 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_FWPATCHLV ;
 int BWI_COMM_MOBJ_FWREV ;
 int BWI_FWHDR_SZ ;
 int BWI_FW_PCM_MOBJ ;
 int BWI_FW_UCODE_MOBJ ;
 scalar_t__ BWI_FW_VERSION3_REVMAX ;
 scalar_t__ BWI_INTR_READY ;
 int BWI_MAC_INTR_STATUS ;
 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_IHREN ;
 int BWI_MAC_STATUS_INFRA ;
 int BWI_MAC_STATUS_UCODE_START ;
 int BWI_MOBJ_CTRL ;
 int BWI_MOBJ_CTRL_VAL (int,int) ;
 int BWI_MOBJ_DATA ;
 int BWI_WR_MOBJ_AUTOINC ;
 scalar_t__ CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int) ;
 int DELAY (int) ;
 int ENODEV ;
 int ETIMEDOUT ;
 scalar_t__ MOBJ_READ_2 (struct bwi_mac*,int ,int ) ;
 int NRETRY ;
 int be32toh (scalar_t__ const) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
bwi_mac_fw_load(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 const uint32_t *fw;
 uint16_t fw_rev;
 int fw_len, i;




 fw = (const uint32_t *)
      ((const uint8_t *)mac->mac_ucode->data + BWI_FWHDR_SZ);
 fw_len = (mac->mac_ucode->datasize - BWI_FWHDR_SZ) / sizeof(uint32_t);

 CSR_WRITE_4(sc, BWI_MOBJ_CTRL,
      BWI_MOBJ_CTRL_VAL(
      BWI_FW_UCODE_MOBJ | BWI_WR_MOBJ_AUTOINC, 0));
 for (i = 0; i < fw_len; ++i) {
  CSR_WRITE_4(sc, BWI_MOBJ_DATA, be32toh(fw[i]));
  DELAY(10);
 }




 fw = (const uint32_t *)
      ((const uint8_t *)mac->mac_pcm->data + BWI_FWHDR_SZ);
 fw_len = (mac->mac_pcm->datasize - BWI_FWHDR_SZ) / sizeof(uint32_t);

 CSR_WRITE_4(sc, BWI_MOBJ_CTRL,
      BWI_MOBJ_CTRL_VAL(BWI_FW_PCM_MOBJ, 0x01ea));
 CSR_WRITE_4(sc, BWI_MOBJ_DATA, 0x4000);

 CSR_WRITE_4(sc, BWI_MOBJ_CTRL,
      BWI_MOBJ_CTRL_VAL(BWI_FW_PCM_MOBJ, 0x01eb));
 for (i = 0; i < fw_len; ++i) {
  CSR_WRITE_4(sc, BWI_MOBJ_DATA, be32toh(fw[i]));
  DELAY(10);
 }

 CSR_WRITE_4(sc, BWI_MAC_INTR_STATUS, BWI_ALL_INTRS);
 CSR_WRITE_4(sc, BWI_MAC_STATUS,
      BWI_MAC_STATUS_UCODE_START |
      BWI_MAC_STATUS_IHREN |
      BWI_MAC_STATUS_INFRA);



 for (i = 0; i < 200; ++i) {
  uint32_t intr_status;

  intr_status = CSR_READ_4(sc, BWI_MAC_INTR_STATUS);
  if (intr_status == BWI_INTR_READY)
   break;
  DELAY(10);
 }
 if (i == 200) {
  device_printf(sc->sc_dev,
      "firmware (ucode&pcm) loading timed out\n");
  return ETIMEDOUT;
 }



 CSR_READ_4(sc, BWI_MAC_INTR_STATUS);

 fw_rev = MOBJ_READ_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_FWREV);
 if (fw_rev > BWI_FW_VERSION3_REVMAX) {
  device_printf(sc->sc_dev,
      "firmware version 4 is not supported yet\n");
  return ENODEV;
 }

 device_printf(sc->sc_dev,
     "firmware rev 0x%04x, patch level 0x%04x\n", fw_rev,
     MOBJ_READ_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_FWPATCHLV));
 return 0;
}
