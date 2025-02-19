
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct bwi_softc {size_t sc_nmac; scalar_t__ sc_pci_did; int sc_dev; struct bwi_mac* sc_mac; } ;
struct bwi_mac {int mac_rev; int mac_flags; int mac_regwin; } ;


 int BWI_CREATE_MAC (struct bwi_mac*,struct bwi_softc*,int,size_t) ;
 int BWI_DBG_ATTACH ;
 int BWI_DBG_MAC ;
 int BWI_MAC_F_HAS_TXSTATS ;
 int BWI_MAC_F_PHYE_RESET ;
 size_t BWI_MAC_MAX ;
 scalar_t__ BWI_REGWIN_EXIST (int *) ;
 int DPRINTF (struct bwi_softc*,int,char*,char*) ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 scalar_t__ PCI_PRODUCT_BROADCOM_BCM4309 ;
 size_t* bwi_sup_macrev ;
 int device_printf (int ,char*,...) ;
 int nitems (size_t*) ;

int
bwi_mac_attach(struct bwi_softc *sc, int id, uint8_t rev)
{
 struct bwi_mac *mac;
 int i;

 KASSERT(sc->sc_nmac <= BWI_MAC_MAX && sc->sc_nmac >= 0,
     ("sc_nmac %d", sc->sc_nmac));

 if (sc->sc_nmac == BWI_MAC_MAX) {
  device_printf(sc->sc_dev, "too many MACs\n");
  return 0;
 }




 if (sc->sc_nmac != 0 &&
     sc->sc_pci_did != PCI_PRODUCT_BROADCOM_BCM4309) {
  DPRINTF(sc, BWI_DBG_MAC | BWI_DBG_ATTACH, "%s\n",
   "ignore second MAC");
  return 0;
 }

 mac = &sc->sc_mac[sc->sc_nmac];


 if (BWI_REGWIN_EXIST(&mac->mac_regwin)) {
  device_printf(sc->sc_dev, "%dth MAC already attached\n",
         sc->sc_nmac);
  return 0;
 }




 for (i = 0; i < nitems(bwi_sup_macrev); ++i) {
  if (bwi_sup_macrev[i] == rev)
   break;
 }
 if (i == nitems(bwi_sup_macrev)) {
  device_printf(sc->sc_dev, "MAC rev %u is "
         "not supported\n", rev);
  return ENXIO;
 }

 BWI_CREATE_MAC(mac, sc, id, rev);
 sc->sc_nmac++;

 if (mac->mac_rev < 5) {
  mac->mac_flags |= BWI_MAC_F_HAS_TXSTATS;
  DPRINTF(sc, BWI_DBG_MAC | BWI_DBG_ATTACH, "%s\n",
   "has TX stats");
 } else {
  mac->mac_flags |= BWI_MAC_F_PHYE_RESET;
 }

 device_printf(sc->sc_dev, "MAC: rev %u\n", rev);
 return 0;
}
