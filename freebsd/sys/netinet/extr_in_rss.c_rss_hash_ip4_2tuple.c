
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct in_addr {int dummy; } ;
typedef int src ;
typedef int dst ;


 int bcopy (struct in_addr*,int *,int) ;
 int rss_hash (size_t,int *) ;

uint32_t
rss_hash_ip4_2tuple(struct in_addr src, struct in_addr dst)
{
 uint8_t data[sizeof(src) + sizeof(dst)];
 u_int datalen;

 datalen = 0;
 bcopy(&src, &data[datalen], sizeof(src));
 datalen += sizeof(src);
 bcopy(&dst, &data[datalen], sizeof(dst));
 datalen += sizeof(dst);
 return (rss_hash(datalen, data));
}
