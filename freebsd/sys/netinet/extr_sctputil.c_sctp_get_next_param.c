
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sctp_paramhdr {int dummy; } ;
struct mbuf {int dummy; } ;


 scalar_t__ sctp_m_getptr (struct mbuf*,int,int,int *) ;

struct sctp_paramhdr *
sctp_get_next_param(struct mbuf *m,
    int offset,
    struct sctp_paramhdr *pull,
    int pull_limit)
{

 return ((struct sctp_paramhdr *)sctp_m_getptr(m, offset, pull_limit,
     (uint8_t *)pull));
}
