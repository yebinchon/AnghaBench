
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int dummy; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;


 int BWI_INTR_READY ;
 int BWI_MAC_INTR_STATUS ;
 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_ENABLE ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_SETBITS_4 (struct bwi_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int ) ;
 int bwi_mac_config_ps (struct bwi_mac*) ;

int
bwi_mac_start(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;

 CSR_SETBITS_4(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_ENABLE);
 CSR_WRITE_4(sc, BWI_MAC_INTR_STATUS, BWI_INTR_READY);


 CSR_READ_4(sc, BWI_MAC_STATUS);
 CSR_READ_4(sc, BWI_MAC_INTR_STATUS);

 return bwi_mac_config_ps(mac);
}
