
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_short ;
struct in6_addr {int dummy; } ;


 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int M_HASHTYPE_RSS_IPV6 ;
 int M_HASHTYPE_RSS_TCP_IPV6 ;
 int M_HASHTYPE_RSS_UDP_IPV6 ;
 int RSS_DEBUG (char*) ;
 int RSS_HASHTYPE_RSS_IPV6 ;
 int RSS_HASHTYPE_RSS_TCP_IPV6 ;
 int RSS_HASHTYPE_RSS_UDP_IPV6 ;
 int rss_gethashconfig () ;
 int rss_hash_ip6_2tuple (struct in6_addr const*,struct in6_addr const*) ;
 int rss_hash_ip6_4tuple (struct in6_addr const*,int ,struct in6_addr const*,int ) ;

int
rss_proto_software_hash_v6(const struct in6_addr *s, const struct in6_addr *d,
    u_short sp, u_short dp, int proto,
    uint32_t *hashval, uint32_t *hashtype)
{
 uint32_t hash;





 if ((proto == IPPROTO_TCP) &&
     (rss_gethashconfig() & RSS_HASHTYPE_RSS_TCP_IPV6)) {
  hash = rss_hash_ip6_4tuple(s, sp, d, dp);
  *hashval = hash;
  *hashtype = M_HASHTYPE_RSS_TCP_IPV6;
  return (0);
 } else if ((proto == IPPROTO_UDP) &&
     (rss_gethashconfig() & RSS_HASHTYPE_RSS_UDP_IPV6)) {
  hash = rss_hash_ip6_4tuple(s, sp, d, dp);
  *hashval = hash;
  *hashtype = M_HASHTYPE_RSS_UDP_IPV6;
  return (0);
 } else if (rss_gethashconfig() & RSS_HASHTYPE_RSS_IPV6) {

  hash = rss_hash_ip6_2tuple(s, d);
  *hashval = hash;
  *hashtype = M_HASHTYPE_RSS_IPV6;
  return (0);
 }


 RSS_DEBUG("no available hashtypes!\n");
 return (-1);
}
