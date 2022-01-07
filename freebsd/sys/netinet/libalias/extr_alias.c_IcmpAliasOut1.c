
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct ip {struct in_addr ip_src; int ip_sum; int ip_dst; } ;
struct icmp {int icmp_id; int icmp_cksum; } ;
struct alias_link {int dummy; } ;


 int ADJUST_CHECKSUM (int,int ) ;
 int DifferentialChecksum (int *,struct in_addr*,struct in_addr*,int) ;
 struct alias_link* FindIcmpOut (struct libalias*,struct in_addr,int ,int,int) ;
 struct in_addr GetAliasAddress (struct alias_link*) ;
 int GetAliasPort (struct alias_link*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int PKT_ALIAS_IGNORED ;
 int PKT_ALIAS_OK ;
 scalar_t__ ip_next (struct ip*) ;

__attribute__((used)) static int
IcmpAliasOut1(struct libalias *la, struct ip *pip, int create)
{




 struct alias_link *lnk;
 struct icmp *ic;

 LIBALIAS_LOCK_ASSERT(la);
 ic = (struct icmp *)ip_next(pip);


 lnk = FindIcmpOut(la, pip->ip_src, pip->ip_dst, ic->icmp_id, create);
 if (lnk != ((void*)0)) {
  u_short alias_id;
  int accumulate;

  alias_id = GetAliasPort(lnk);


  accumulate = ic->icmp_id;
  accumulate -= alias_id;
  ADJUST_CHECKSUM(accumulate, ic->icmp_cksum);


  ic->icmp_id = alias_id;


  {
   struct in_addr alias_address;

   alias_address = GetAliasAddress(lnk);
   DifferentialChecksum(&pip->ip_sum,
       &alias_address, &pip->ip_src, 2);
   pip->ip_src = alias_address;
  }

  return (PKT_ALIAS_OK);
 }
 return (PKT_ALIAS_IGNORED);
}
