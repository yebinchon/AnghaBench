
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int dummy; } ;


 scalar_t__ SCTP_BUF_LEN (struct mbuf*) ;
 struct mbuf* SCTP_BUF_NEXT (struct mbuf*) ;

uint32_t
sctp_calculate_len(struct mbuf *m)
{
 uint32_t tlen = 0;
 struct mbuf *at;

 at = m;
 while (at) {
  tlen += SCTP_BUF_LEN(at);
  at = SCTP_BUF_NEXT(at);
 }
 return (tlen);
}
