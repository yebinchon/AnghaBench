
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;


 int ic_printf (struct ieee80211com*,char*) ;

__attribute__((used)) static void
null_update_mcast(struct ieee80211com *ic)
{

 ic_printf(ic, "need multicast update callback\n");
}
