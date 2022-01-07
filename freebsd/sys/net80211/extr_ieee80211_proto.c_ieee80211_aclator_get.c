
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_aclator {int iac_name; } ;


 struct ieee80211_aclator const* acl ;
 int ieee80211_load_module (char*) ;
 scalar_t__ strcmp (int ,char const*) ;

const struct ieee80211_aclator *
ieee80211_aclator_get(const char *name)
{
 if (acl == ((void*)0))
  ieee80211_load_module("wlan_acl");
 return acl != ((void*)0) && strcmp(acl->iac_name, name) == 0 ? acl : ((void*)0);
}
