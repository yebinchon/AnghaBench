
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_aclator {char* iac_name; } ;


 struct ieee80211_aclator const* acl ;
 int printf (char*,char*) ;

void
ieee80211_aclator_unregister(const struct ieee80211_aclator *iac)
{
 if (acl == iac)
  acl = ((void*)0);
 printf("wlan: %s acl policy unregistered\n", iac->iac_name);
}
