
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int dummy; } ;
struct ieee80211com {struct upgt_softc* ic_softc; } ;


 int upgt_set_multi (struct upgt_softc*) ;

__attribute__((used)) static void
upgt_update_mcast(struct ieee80211com *ic)
{
 struct upgt_softc *sc = ic->ic_softc;

 upgt_set_multi(sc);
}
