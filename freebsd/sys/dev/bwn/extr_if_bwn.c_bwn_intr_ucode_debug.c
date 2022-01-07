
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct bwn_softc {int sc_dev; } ;
struct TYPE_2__ {scalar_t__ opensource; } ;
struct bwn_mac {TYPE_1__ mac_fw; struct bwn_softc* mac_sc; } ;


 int BWN_DEBUGINTR_ACK ;




 int BWN_DEBUGINTR_REASON_REG ;
 int BWN_SCRATCH ;
 int bwn_handle_fwpanic (struct bwn_mac*) ;
 int bwn_shm_read_2 (struct bwn_mac*,int ,int ) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static void
bwn_intr_ucode_debug(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 uint16_t reason;

 if (mac->mac_fw.opensource == 0)
  return;

 reason = bwn_shm_read_2(mac, BWN_SCRATCH, BWN_DEBUGINTR_REASON_REG);
 switch (reason) {
 case 128:
  bwn_handle_fwpanic(mac);
  break;
 case 130:
  device_printf(sc->sc_dev, "BWN_DEBUGINTR_DUMP_SHM\n");
  break;
 case 131:
  device_printf(sc->sc_dev, "BWN_DEBUGINTR_DUMP_REGS\n");
  break;
 case 129:
  device_printf(sc->sc_dev, "BWN_DEBUGINTR_MARKER\n");
  break;
 default:
  device_printf(sc->sc_dev,
      "ucode debug unknown reason: %#x\n", reason);
 }

 bwn_shm_write_2(mac, BWN_SCRATCH, BWN_DEBUGINTR_REASON_REG,
     BWN_DEBUGINTR_ACK);
}
