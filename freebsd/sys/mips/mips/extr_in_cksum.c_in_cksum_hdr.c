
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union q_util {int dummy; } q_util ;
typedef union l_util {int dummy; } l_util ;
typedef int u_int64_t ;
typedef int u_int ;
struct ip {int dummy; } ;


 int REDUCE16 ;
 int in_cksumdata (struct ip const*,int) ;

u_int in_cksum_hdr(const struct ip *ip)
{
 u_int64_t sum = in_cksumdata(ip, sizeof(struct ip));
 union q_util q_util;
 union l_util l_util;
 REDUCE16;
 return (~sum & 0xffff);
}
