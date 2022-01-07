
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct in6_addr {int dummy; } ;


 int bcopy (struct in6_addr const*,int *,int) ;
 int rss_hash (size_t,int *) ;

uint32_t
rss_hash_ip6_2tuple(const struct in6_addr *src, const struct in6_addr *dst)
{
 uint8_t data[sizeof(*src) + sizeof(*dst)];
 u_int datalen;

 datalen = 0;
 bcopy(src, &data[datalen], sizeof(*src));
 datalen += sizeof(*src);
 bcopy(dst, &data[datalen], sizeof(*dst));
 datalen += sizeof(*dst);
 return (rss_hash(datalen, data));
}
