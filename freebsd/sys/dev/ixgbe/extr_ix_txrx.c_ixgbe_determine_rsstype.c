
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
 int IXGBE_RXDADV_RSSTYPE_MASK ;
 int M_HASHTYPE_OPAQUE ;
 int M_HASHTYPE_RSS_IPV4 ;
 int M_HASHTYPE_RSS_IPV6 ;
 int M_HASHTYPE_RSS_IPV6_EX ;
 int M_HASHTYPE_RSS_TCP_IPV4 ;
 int M_HASHTYPE_RSS_TCP_IPV6 ;
 int M_HASHTYPE_RSS_TCP_IPV6_EX ;
 int M_HASHTYPE_RSS_UDP_IPV4 ;
 int M_HASHTYPE_RSS_UDP_IPV6 ;
 int M_HASHTYPE_RSS_UDP_IPV6_EX ;

__attribute__((used)) static int
ixgbe_determine_rsstype(u16 pkt_info)
{
 switch (pkt_info & IXGBE_RXDADV_RSSTYPE_MASK) {
 case 135:
  return M_HASHTYPE_RSS_TCP_IPV4;
 case 136:
  return M_HASHTYPE_RSS_IPV4;
 case 131:
  return M_HASHTYPE_RSS_TCP_IPV6;
 case 132:
  return M_HASHTYPE_RSS_IPV6_EX;
 case 133:
  return M_HASHTYPE_RSS_IPV6;
 case 130:
  return M_HASHTYPE_RSS_TCP_IPV6_EX;
 case 134:
  return M_HASHTYPE_RSS_UDP_IPV4;
 case 129:
  return M_HASHTYPE_RSS_UDP_IPV6;
 case 128:
  return M_HASHTYPE_RSS_UDP_IPV6_EX;
 default:
  return M_HASHTYPE_OPAQUE;
 }
}
