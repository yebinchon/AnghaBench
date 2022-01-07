
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2661_softc {int dummy; } ;
struct ieee80211com {struct rt2661_softc* ic_softc; } ;


 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_TXRX_CSR9 ;
 int ieee80211broadcastaddr ;
 int rt2661_set_bssid (struct rt2661_softc*,int ) ;

__attribute__((used)) static void
rt2661_scan_start(struct ieee80211com *ic)
{
 struct rt2661_softc *sc = ic->ic_softc;
 uint32_t tmp;


 tmp = RAL_READ(sc, RT2661_TXRX_CSR9);
 RAL_WRITE(sc, RT2661_TXRX_CSR9, tmp & ~0xffffff);
 rt2661_set_bssid(sc, ieee80211broadcastaddr);
}
