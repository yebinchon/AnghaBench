
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_authenticator {int dummy; } ;


 int IEEE80211_AUTH_MAX ;
 struct ieee80211_authenticator const** authenticators ;

void
ieee80211_authenticator_register(int type,
 const struct ieee80211_authenticator *auth)
{
 if (type >= IEEE80211_AUTH_MAX)
  return;
 authenticators[type] = auth;
}
