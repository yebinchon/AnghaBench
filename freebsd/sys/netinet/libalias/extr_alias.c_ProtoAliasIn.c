
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
 struct alias_link* FindProtoIn (struct libalias*,struct in_addr,struct in_addr,int ) ;
 struct in_addr GetOriginalAddress (struct alias_link*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int PKT_ALIAS_IGNORED ;
 int PKT_ALIAS_OK ;
 int PKT_ALIAS_PROXY_ONLY ;

__attribute__((used)) static int
ProtoAliasIn(struct libalias *la, struct in_addr ip_src,
    struct in_addr *ip_dst, u_char ip_p, u_short *ip_sum)
{






 struct alias_link *lnk;

 LIBALIAS_LOCK_ASSERT(la);

 if (la->packetAliasMode & PKT_ALIAS_PROXY_ONLY)
  return (PKT_ALIAS_OK);

 lnk = FindProtoIn(la, ip_src, *ip_dst, ip_p);
 if (lnk != ((void*)0)) {
  struct in_addr original_address;

  original_address = GetOriginalAddress(lnk);


  DifferentialChecksum(ip_sum,
      &original_address, ip_dst, 2);
  *ip_dst = original_address;

  return (PKT_ALIAS_OK);
 }
 return (PKT_ALIAS_IGNORED);
}
