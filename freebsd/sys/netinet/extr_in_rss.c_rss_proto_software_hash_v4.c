
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_short ;
struct in_addr {int dummy; } ;


 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int M_HASHTYPE_RSS_IPV4 ;
 int M_HASHTYPE_RSS_TCP_IPV4 ;
 int M_HASHTYPE_RSS_UDP_IPV4 ;
 int RSS_DEBUG (char*) ;
 int RSS_HASHTYPE_RSS_IPV4 ;
 int RSS_HASHTYPE_RSS_TCP_IPV4 ;
 int RSS_HASHTYPE_RSS_UDP_IPV4 ;
 int rss_gethashconfig () ;
 int rss_hash_ip4_2tuple (struct in_addr,struct in_addr) ;
 int rss_hash_ip4_4tuple (struct in_addr,int ,struct in_addr,int ) ;

int
rss_proto_software_hash_v4(struct in_addr s, struct in_addr d,
    u_short sp, u_short dp, int proto,
    uint32_t *hashval, uint32_t *hashtype)
{
 uint32_t hash;





 if ((proto == IPPROTO_TCP) &&
     (rss_gethashconfig() & RSS_HASHTYPE_RSS_TCP_IPV4)) {
  hash = rss_hash_ip4_4tuple(s, sp, d, dp);
  *hashval = hash;
  *hashtype = M_HASHTYPE_RSS_TCP_IPV4;
  return (0);
 } else if ((proto == IPPROTO_UDP) &&
     (rss_gethashconfig() & RSS_HASHTYPE_RSS_UDP_IPV4)) {
  hash = rss_hash_ip4_4tuple(s, sp, d, dp);
  *hashval = hash;
  *hashtype = M_HASHTYPE_RSS_UDP_IPV4;
  return (0);
 } else if (rss_gethashconfig() & RSS_HASHTYPE_RSS_IPV4) {

  hash = rss_hash_ip4_2tuple(s, d);
  *hashval = hash;
  *hashtype = M_HASHTYPE_RSS_IPV4;
  return (0);
 }


 RSS_DEBUG("no available hashtypes!\n");
 return (-1);
}
