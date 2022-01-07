
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_authenticator {int dummy; } ;


 int IEEE80211_AUTH_MAX ;
 int * auth_modnames ;
 struct ieee80211_authenticator const** authenticators ;
 int ieee80211_load_module (int ) ;

const struct ieee80211_authenticator *
ieee80211_authenticator_get(int auth)
{
 if (auth >= IEEE80211_AUTH_MAX)
  return ((void*)0);
 if (authenticators[auth] == ((void*)0))
  ieee80211_load_module(auth_modnames[auth]);
 return authenticators[auth];
}
