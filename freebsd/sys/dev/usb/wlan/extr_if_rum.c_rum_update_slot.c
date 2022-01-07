
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_softc; } ;


 int rum_cmd_sleepable (int ,int *,int ,int ,int ) ;
 int rum_update_slot_cb ;

__attribute__((used)) static void
rum_update_slot(struct ieee80211com *ic)
{
 rum_cmd_sleepable(ic->ic_softc, ((void*)0), 0, 0, rum_update_slot_cb);
}
