
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bwn_softc {int sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int BWN_FWPANIC_REASON_REG ;
 scalar_t__ BWN_FWPANIC_RESTART ;
 int BWN_SCRATCH ;
 int bwn_restart (struct bwn_mac*,char*) ;
 scalar_t__ bwn_shm_read_2 (struct bwn_mac*,int ,int ) ;
 int device_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static void
bwn_handle_fwpanic(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 uint16_t reason;

 reason = bwn_shm_read_2(mac, BWN_SCRATCH, BWN_FWPANIC_REASON_REG);
 device_printf(sc->sc_dev,"fw panic (%u)\n", reason);

 if (reason == BWN_FWPANIC_RESTART)
  bwn_restart(mac, "ucode panic");
}
