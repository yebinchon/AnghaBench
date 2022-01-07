
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ regdomain; scalar_t__ country; char location; } ;
struct ieee80211com {int ic_setregdomain; int ic_getradiocaps; TYPE_1__ ic_regdomain; } ;


 scalar_t__ CTRY_DEFAULT ;
 int null_getradiocaps ;
 int null_setregdomain ;

void
ieee80211_regdomain_attach(struct ieee80211com *ic)
{
 if (ic->ic_regdomain.regdomain == 0 &&
     ic->ic_regdomain.country == CTRY_DEFAULT) {
  ic->ic_regdomain.location = ' ';

 }
 ic->ic_getradiocaps = null_getradiocaps;
 ic->ic_setregdomain = null_setregdomain;
}
