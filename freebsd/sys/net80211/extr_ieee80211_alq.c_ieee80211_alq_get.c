
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_alq_rec {int dummy; } ;
struct ale {int dummy; } ;


 int ALQ_NOWAIT ;
 struct ale* alq_getn (int ,size_t,int ) ;
 int ieee80211_alq ;
 int ieee80211_alq_logged ;
 int ieee80211_alq_lost ;

__attribute__((used)) static struct ale *
ieee80211_alq_get(size_t len)
{
 struct ale *ale;

 ale = alq_getn(ieee80211_alq, len + sizeof(struct ieee80211_alq_rec),
     ALQ_NOWAIT);
 if (!ale)
  ieee80211_alq_lost++;
 else
  ieee80211_alq_logged++;
 return ale;
}
