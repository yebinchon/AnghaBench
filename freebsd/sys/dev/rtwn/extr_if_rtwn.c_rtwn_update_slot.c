
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_softc; } ;


 int rtwn_cmd_sleepable (int ,int *,int ,int ) ;
 int rtwn_update_slot_cb ;

__attribute__((used)) static void
rtwn_update_slot(struct ieee80211com *ic)
{
 rtwn_cmd_sleepable(ic->ic_softc, ((void*)0), 0, rtwn_update_slot_cb);
}
