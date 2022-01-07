
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct aclstate* iv_as; } ;
struct aclstate {int as_policy; } ;



__attribute__((used)) static int
acl_getpolicy(struct ieee80211vap *vap)
{
 struct aclstate *as = vap->iv_as;

 return as->as_policy;
}
