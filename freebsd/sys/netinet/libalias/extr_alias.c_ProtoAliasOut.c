
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct libalias {int packetAliasMode; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;


 int DifferentialChecksum (int *,struct in_addr*,struct in_addr*,int) ;
 struct alias_link* FindProtoOut (struct libalias*,struct in_addr,struct in_addr,int ) ;
 struct in_addr GetAliasAddress (struct alias_link*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int PKT_ALIAS_IGNORED ;
 int PKT_ALIAS_OK ;
 int PKT_ALIAS_PROXY_ONLY ;

__attribute__((used)) static int
ProtoAliasOut(struct libalias *la, struct in_addr *ip_src,
    struct in_addr ip_dst, u_char ip_p, u_short *ip_sum, int create)
{





 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);


 if (la->packetAliasMode & PKT_ALIAS_PROXY_ONLY)
  return (PKT_ALIAS_OK);

 if (!create)
  return (PKT_ALIAS_IGNORED);

 lnk = FindProtoOut(la, *ip_src, ip_dst, ip_p);
 if (lnk != ((void*)0)) {
  struct in_addr alias_address;

  alias_address = GetAliasAddress(lnk);


  DifferentialChecksum(ip_sum,
      &alias_address, ip_src, 2);
  *ip_src = alias_address;

  return (PKT_ALIAS_OK);
 }
 return (PKT_ALIAS_IGNORED);
}
