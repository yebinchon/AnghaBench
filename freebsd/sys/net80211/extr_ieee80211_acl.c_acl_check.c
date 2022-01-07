
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct aclstate* iv_as; } ;
struct ieee80211_frame {int i_addr2; } ;
struct aclstate {int as_policy; } ;






 int * _find_acl (struct aclstate*,int ) ;

__attribute__((used)) static int
acl_check(struct ieee80211vap *vap, const struct ieee80211_frame *wh)
{
 struct aclstate *as = vap->iv_as;

 switch (as->as_policy) {
 case 129:
 case 128:
  return 1;
 case 131:
  return _find_acl(as, wh->i_addr2) != ((void*)0);
 case 130:
  return _find_acl(as, wh->i_addr2) == ((void*)0);
 }
 return 0;
}
