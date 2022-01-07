
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int sc_dev; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;


 int BWI_INTR_READY ;
 int BWI_MAC_INTR_STATUS ;
 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_ENABLE ;
 int CSR_CLRBITS_4 (struct bwi_softc*,int ,int ) ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int NRETRY ;
 int bwi_mac_config_ps (struct bwi_mac*) ;
 int device_printf (int ,char*) ;

int
bwi_mac_stop(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 int error, i;

 error = bwi_mac_config_ps(mac);
 if (error)
  return error;

 CSR_CLRBITS_4(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_ENABLE);


 CSR_READ_4(sc, BWI_MAC_STATUS);


 for (i = 0; i < 10000; ++i) {
  if (CSR_READ_4(sc, BWI_MAC_INTR_STATUS) & BWI_INTR_READY)
   break;
  DELAY(1);
 }
 if (i == 10000) {
  device_printf(sc->sc_dev, "can't stop MAC\n");
  return ETIMEDOUT;
 }


 return 0;
}
