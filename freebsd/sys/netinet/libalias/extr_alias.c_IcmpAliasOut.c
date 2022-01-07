
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int packetAliasMode; } ;
struct ip {int dummy; } ;
struct icmp {int icmp_type; int icmp_code; } ;
 int IcmpAliasOut1 (struct libalias*,struct ip*,int) ;
 int IcmpAliasOut2 (struct libalias*,struct ip*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int PKT_ALIAS_IGNORED ;
 int PKT_ALIAS_OK ;
 int PKT_ALIAS_PROXY_ONLY ;
 scalar_t__ ip_next (struct ip*) ;

__attribute__((used)) static int
IcmpAliasOut(struct libalias *la, struct ip *pip, int create)
{
 int iresult;
 struct icmp *ic;

 LIBALIAS_LOCK_ASSERT(la);
 (void)create;


 if (la->packetAliasMode & PKT_ALIAS_PROXY_ONLY)
  return (PKT_ALIAS_OK);

 ic = (struct icmp *)ip_next(pip);

 iresult = PKT_ALIAS_IGNORED;
 switch (ic->icmp_type) {
 case 135:
 case 130:
  if (ic->icmp_code == 0) {
   iresult = IcmpAliasOut1(la, pip, create);
  }
  break;
 case 128:
 case 132:
 case 131:
 case 133:
  iresult = IcmpAliasOut2(la, pip);
  break;
 case 134:
 case 129:
  iresult = IcmpAliasOut1(la, pip, create);
 }
 return (iresult);
}
