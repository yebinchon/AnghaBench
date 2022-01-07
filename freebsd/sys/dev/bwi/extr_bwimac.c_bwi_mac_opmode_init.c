
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211com {int ic_opmode; scalar_t__ ic_promisc; } ;
struct bwi_softc {scalar_t__ sc_bbp_id; int sc_bbp_rev; struct ieee80211com sc_ic; } ;
struct bwi_mac {int mac_rev; struct bwi_softc* mac_sc; } ;


 scalar_t__ BWI_BBPID_BCM4306 ;
 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_PROBE_RESP_TO ;
 int BWI_MAC_PRE_TBTT ;
 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_INFRA ;
 int BWI_MAC_STATUS_OPMODE_HOSTAP ;
 int BWI_MAC_STATUS_PASS_BADFCS ;
 int BWI_MAC_STATUS_PASS_BADPLCP ;
 int BWI_MAC_STATUS_PASS_BCN ;
 int BWI_MAC_STATUS_PASS_CTL ;
 int BWI_MAC_STATUS_PROMISC ;
 int CSR_CLRBITS_4 (struct bwi_softc*,int ,int) ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_SETBITS_4 (struct bwi_softc*,int ,int) ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int) ;



 int MOBJ_WRITE_2 (struct bwi_mac*,int ,int ,int ) ;

__attribute__((used)) static void
bwi_mac_opmode_init(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t mac_status;
 uint16_t pre_tbtt;

 CSR_CLRBITS_4(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_INFRA);
 CSR_SETBITS_4(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_INFRA);


 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_PROBE_RESP_TO, 0);





 mac_status = CSR_READ_4(sc, BWI_MAC_STATUS);
 mac_status &= ~(BWI_MAC_STATUS_OPMODE_HOSTAP |
   BWI_MAC_STATUS_PASS_CTL |
   BWI_MAC_STATUS_PASS_BCN |
   BWI_MAC_STATUS_PASS_BADPLCP |
   BWI_MAC_STATUS_PASS_BADFCS |
   BWI_MAC_STATUS_PROMISC);
 mac_status |= BWI_MAC_STATUS_INFRA;


 if (mac->mac_rev < 5)
  mac_status |= BWI_MAC_STATUS_PROMISC;

 switch (ic->ic_opmode) {
 case 129:
  mac_status &= ~BWI_MAC_STATUS_INFRA;
  break;
 case 130:
  mac_status |= BWI_MAC_STATUS_OPMODE_HOSTAP;
  break;
 case 128:






  mac_status |= BWI_MAC_STATUS_PASS_CTL;


  break;
 default:
  break;
 }

 if (ic->ic_promisc > 0)
  mac_status |= BWI_MAC_STATUS_PROMISC;

 CSR_WRITE_4(sc, BWI_MAC_STATUS, mac_status);

 if (ic->ic_opmode != 129 &&
     ic->ic_opmode != 130) {
  if (sc->sc_bbp_id == BWI_BBPID_BCM4306 && sc->sc_bbp_rev == 3)
   pre_tbtt = 100;
  else
   pre_tbtt = 50;
 } else {
  pre_tbtt = 2;
 }
 CSR_WRITE_2(sc, BWI_MAC_PRE_TBTT, pre_tbtt);
}
