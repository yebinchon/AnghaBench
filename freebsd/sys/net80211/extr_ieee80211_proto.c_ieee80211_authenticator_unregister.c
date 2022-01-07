
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_AUTH_MAX ;
 int ** authenticators ;

void
ieee80211_authenticator_unregister(int type)
{

 if (type >= IEEE80211_AUTH_MAX)
  return;
 authenticators[type] = ((void*)0);
}
