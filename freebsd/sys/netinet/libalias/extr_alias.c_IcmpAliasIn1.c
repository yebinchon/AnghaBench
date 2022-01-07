
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct ip {struct in_addr ip_dst; int ip_sum; int ip_src; } ;
struct icmp {int icmp_id; int icmp_cksum; } ;
struct alias_link {int dummy; } ;


 int ADJUST_CHECKSUM (int,int ) ;
 int DifferentialChecksum (int *,struct in_addr*,struct in_addr*,int) ;
 struct alias_link* FindIcmpIn (struct libalias*,int ,struct in_addr,int,int) ;
 struct in_addr GetOriginalAddress (struct alias_link*) ;
 int GetOriginalPort (struct alias_link*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int PKT_ALIAS_IGNORED ;
 int PKT_ALIAS_OK ;
 scalar_t__ ip_next (struct ip*) ;

__attribute__((used)) static int
IcmpAliasIn1(struct libalias *la, struct ip *pip)
{

 LIBALIAS_LOCK_ASSERT(la);




 struct alias_link *lnk;
 struct icmp *ic;

 ic = (struct icmp *)ip_next(pip);


 lnk = FindIcmpIn(la, pip->ip_src, pip->ip_dst, ic->icmp_id, 1);
 if (lnk != ((void*)0)) {
  u_short original_id;
  int accumulate;

  original_id = GetOriginalPort(lnk);


  accumulate = ic->icmp_id;
  accumulate -= original_id;
  ADJUST_CHECKSUM(accumulate, ic->icmp_cksum);


  ic->icmp_id = original_id;


  {
   struct in_addr original_address;

   original_address = GetOriginalAddress(lnk);
   DifferentialChecksum(&pip->ip_sum,
       &original_address, &pip->ip_dst, 2);
   pip->ip_dst = original_address;
  }

  return (PKT_ALIAS_OK);
 }
 return (PKT_ALIAS_IGNORED);
}
