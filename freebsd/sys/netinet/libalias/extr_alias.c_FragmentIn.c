
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 int DifferentialChecksum (int *,struct in_addr*,struct in_addr*,int) ;
 struct alias_link* FindFragmentIn2 (struct libalias*,struct in_addr,struct in_addr,int ) ;
 int GetFragmentAddr (struct alias_link*,struct in_addr*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int PKT_ALIAS_OK ;
 int PKT_ALIAS_UNRESOLVED_FRAGMENT ;

__attribute__((used)) static int
FragmentIn(struct libalias *la, struct in_addr ip_src, struct in_addr *ip_dst,
    u_short ip_id, u_short *ip_sum)
{
 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);
 lnk = FindFragmentIn2(la, ip_src, *ip_dst, ip_id);
 if (lnk != ((void*)0)) {
  struct in_addr original_address;

  GetFragmentAddr(lnk, &original_address);
  DifferentialChecksum(ip_sum,
      &original_address, ip_dst, 2);
  *ip_dst = original_address;

  return (PKT_ALIAS_OK);
 }
 return (PKT_ALIAS_UNRESOLVED_FRAGMENT);
}
