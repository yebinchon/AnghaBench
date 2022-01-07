
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int E1000_RXDADV_RSSTYPE_MASK ;
 int M_HASHTYPE_OPAQUE ;
 int M_HASHTYPE_RSS_IPV4 ;
 int M_HASHTYPE_RSS_IPV6 ;
 int M_HASHTYPE_RSS_IPV6_EX ;
 int M_HASHTYPE_RSS_TCP_IPV4 ;
 int M_HASHTYPE_RSS_TCP_IPV6 ;
 int M_HASHTYPE_RSS_TCP_IPV6_EX ;

__attribute__((used)) static int
em_determine_rsstype(u32 pkt_info)
{
 switch (pkt_info & E1000_RXDADV_RSSTYPE_MASK) {
 case 132:
  return M_HASHTYPE_RSS_TCP_IPV4;
 case 133:
  return M_HASHTYPE_RSS_IPV4;
 case 129:
  return M_HASHTYPE_RSS_TCP_IPV6;
 case 130:
  return M_HASHTYPE_RSS_IPV6_EX;
 case 131:
  return M_HASHTYPE_RSS_IPV6;
 case 128:
  return M_HASHTYPE_RSS_TCP_IPV6_EX;
 default:
  return M_HASHTYPE_OPAQUE;
 }
}
