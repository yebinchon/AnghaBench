
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct ieee80211_key {int dummy; } ;


 int wpi_process_key (struct ieee80211vap*,struct ieee80211_key const*,int ) ;

__attribute__((used)) static int
wpi_key_delete(struct ieee80211vap *vap, const struct ieee80211_key *k)
{
 return wpi_process_key(vap, k, 0);
}
