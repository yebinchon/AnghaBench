
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct bwi_softc* ic_softc; } ;
struct bwi_softc {int dummy; } ;


 int BWI_LOCK (struct bwi_softc*) ;
 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_PASS_BCN ;
 int BWI_UNLOCK (struct bwi_softc*) ;
 int CSR_SETBITS_4 (struct bwi_softc*,int ,int ) ;

__attribute__((used)) static void
bwi_scan_start(struct ieee80211com *ic)
{
 struct bwi_softc *sc = ic->ic_softc;

 BWI_LOCK(sc);

 CSR_SETBITS_4(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_PASS_BCN);
 BWI_UNLOCK(sc);
}
