
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int sb_lowat; int sb_hiwat; } ;
struct socket {TYPE_1__ so_rcv; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; } ;
struct cf_conn {int resid; int eor; struct mbuf* mpending; struct mbuf* mreq; } ;
typedef int header ;
struct TYPE_7__ {struct mbuf* m_next; } ;
struct TYPE_6__ {struct socket* xp_socket; scalar_t__ xp_p1; } ;
typedef TYPE_2__ SVCXPRT ;


 int FALSE ;
 int INT_MAX ;
 int M_WAITOK ;
 int TRUE ;
 int imax (int,int ) ;
 int imin (scalar_t__,int) ;
 int m_adj (struct mbuf*,int) ;
 int m_copydata (struct mbuf*,int ,int,char*) ;
 TYPE_4__* m_last (struct mbuf*) ;
 struct mbuf* m_split (struct mbuf*,scalar_t__,int ) ;
 int ntohl (int) ;

__attribute__((used)) static int
svc_vc_process_pending(SVCXPRT *xprt)
{
 struct cf_conn *cd = (struct cf_conn *) xprt->xp_p1;
 struct socket *so = xprt->xp_socket;
 struct mbuf *m;






 if (!cd->resid && cd->mpending) {






  size_t n = 0;
  uint32_t header;

  m = cd->mpending;
  while (n < sizeof(uint32_t) && m) {
   n += m->m_len;
   m = m->m_next;
  }
  if (n < sizeof(uint32_t)) {
   so->so_rcv.sb_lowat = sizeof(uint32_t) - n;
   return (FALSE);
  }
  m_copydata(cd->mpending, 0, sizeof(header),
      (char *)&header);
  header = ntohl(header);
  cd->eor = (header & 0x80000000) != 0;
  cd->resid = header & 0x7fffffff;
  m_adj(cd->mpending, sizeof(uint32_t));
 }
 while (cd->mpending && cd->resid) {
  m = cd->mpending;
  if (cd->mpending->m_next
      || cd->mpending->m_len > cd->resid)
   cd->mpending = m_split(cd->mpending,
       cd->resid, M_WAITOK);
  else
   cd->mpending = ((void*)0);
  if (cd->mreq)
   m_last(cd->mreq)->m_next = m;
  else
   cd->mreq = m;
  while (m) {
   cd->resid -= m->m_len;
   m = m->m_next;
  }
 }





 if (cd->mpending)
  so->so_rcv.sb_lowat = INT_MAX;
 else
  so->so_rcv.sb_lowat =
      imax(1, imin(cd->resid, so->so_rcv.sb_hiwat / 2));
 return (TRUE);
}
