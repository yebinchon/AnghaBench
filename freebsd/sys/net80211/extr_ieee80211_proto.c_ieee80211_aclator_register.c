
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_aclator {char* iac_name; } ;


 struct ieee80211_aclator const* acl ;
 int printf (char*,char*) ;

void
ieee80211_aclator_register(const struct ieee80211_aclator *iac)
{
 printf("wlan: %s acl policy registered\n", iac->iac_name);
 acl = iac;
}
