
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 struct mbuf* SCTP_BUF_NEXT (struct mbuf*) ;
 struct mbuf* sctp_add_pad_tombuf (struct mbuf*,int) ;

struct mbuf *
sctp_pad_lastmbuf(struct mbuf *m, int padval, struct mbuf *last_mbuf)
{

 struct mbuf *m_at;

 if (last_mbuf != ((void*)0)) {
  return (sctp_add_pad_tombuf(last_mbuf, padval));
 } else {
  for (m_at = m; m_at; m_at = SCTP_BUF_NEXT(m_at)) {
   if (SCTP_BUF_NEXT(m_at) == ((void*)0)) {
    return (sctp_add_pad_tombuf(m_at, padval));
   }
  }
 }
 return (((void*)0));
}
