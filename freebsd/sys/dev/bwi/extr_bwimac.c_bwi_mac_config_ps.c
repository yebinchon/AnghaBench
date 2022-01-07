
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_softc {int sc_dev; } ;
struct bwi_mac {int mac_rev; struct bwi_softc* mac_sc; } ;


 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_UCODE_STATE ;
 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_HW_PS ;
 int BWI_MAC_STATUS_WAKEUP ;
 scalar_t__ BWI_UCODE_STATE_PS ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int ) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 scalar_t__ MOBJ_READ_2 (struct bwi_mac*,int ,int ) ;
 int NRETRY ;
 int device_printf (int ,char*) ;

int
bwi_mac_config_ps(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 uint32_t status;

 status = CSR_READ_4(sc, BWI_MAC_STATUS);

 status &= ~BWI_MAC_STATUS_HW_PS;
 status |= BWI_MAC_STATUS_WAKEUP;
 CSR_WRITE_4(sc, BWI_MAC_STATUS, status);


 CSR_READ_4(sc, BWI_MAC_STATUS);

 if (mac->mac_rev >= 5) {
  int i;


  for (i = 0; i < 100; ++i) {
   if (MOBJ_READ_2(mac, BWI_COMM_MOBJ,
       BWI_COMM_MOBJ_UCODE_STATE) != BWI_UCODE_STATE_PS)
    break;
   DELAY(10);
  }
  if (i == 100) {
   device_printf(sc->sc_dev, "config PS failed\n");
   return ETIMEDOUT;
  }

 }
 return 0;
}
