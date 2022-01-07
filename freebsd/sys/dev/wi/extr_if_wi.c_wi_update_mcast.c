
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_softc; } ;


 int wi_write_multi (int ) ;

__attribute__((used)) static void
wi_update_mcast(struct ieee80211com *ic)
{

 wi_write_multi(ic->ic_softc);
}
