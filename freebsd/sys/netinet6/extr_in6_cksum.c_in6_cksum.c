
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct mbuf {int dummy; } ;


 int in6_cksum_partial (struct mbuf*,int ,int ,int ,int ) ;

int
in6_cksum(struct mbuf *m, u_int8_t nxt, u_int32_t off, u_int32_t len)
{
 return (in6_cksum_partial(m, nxt, off, len, len));
}
