
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_AUTH_AUTO ;
 int IEEE80211_AUTH_OPEN ;
 int IEEE80211_AUTH_SHARED ;
 int auth_internal ;
 int ieee80211_authenticator_register (int ,int *) ;

__attribute__((used)) static void
ieee80211_auth_setup(void)
{
 ieee80211_authenticator_register(IEEE80211_AUTH_OPEN, &auth_internal);
 ieee80211_authenticator_register(IEEE80211_AUTH_SHARED, &auth_internal);
 ieee80211_authenticator_register(IEEE80211_AUTH_AUTO, &auth_internal);
}
