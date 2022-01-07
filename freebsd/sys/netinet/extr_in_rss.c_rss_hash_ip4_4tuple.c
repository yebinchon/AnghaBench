
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct in_addr {int dummy; } ;
typedef struct in_addr u_short ;
typedef size_t u_int ;
typedef int srcport ;
typedef int src ;
typedef int dstport ;
typedef int dst ;


 int bcopy (struct in_addr*,int *,int) ;
 int rss_hash (size_t,int *) ;

uint32_t
rss_hash_ip4_4tuple(struct in_addr src, u_short srcport, struct in_addr dst,
    u_short dstport)
{
 uint8_t data[sizeof(src) + sizeof(dst) + sizeof(srcport) +
     sizeof(dstport)];
 u_int datalen;

 datalen = 0;
 bcopy(&src, &data[datalen], sizeof(src));
 datalen += sizeof(src);
 bcopy(&dst, &data[datalen], sizeof(dst));
 datalen += sizeof(dst);
 bcopy(&srcport, &data[datalen], sizeof(srcport));
 datalen += sizeof(srcport);
 bcopy(&dstport, &data[datalen], sizeof(dstport));
 datalen += sizeof(dstport);
 return (rss_hash(datalen, data));
}
