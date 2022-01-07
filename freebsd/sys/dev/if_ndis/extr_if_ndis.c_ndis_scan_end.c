
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_softc {int dummy; } ;
struct ieee80211com {struct ndis_softc* ic_softc; } ;


 int ndis_scan_results (struct ndis_softc*) ;

__attribute__((used)) static void
ndis_scan_end(struct ieee80211com *ic)
{
 struct ndis_softc *sc = ic->ic_softc;

 ndis_scan_results(sc);
}
