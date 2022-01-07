
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {struct socket* unp_socket; struct unpcb* unp_conn; } ;
struct socket {int so_rcv; } ;
struct mbuf {int dummy; } ;


 int ECONNRESET ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 scalar_t__ UNP_PCB_TRYLOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 struct mbuf* m_free (struct mbuf*) ;
 int sbready (int *,struct mbuf*,int) ;
 int sorwakeup_locked (struct socket*) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_pcb_hold (struct unpcb*) ;
 scalar_t__ unp_pcb_rele (struct unpcb*) ;

__attribute__((used)) static int
uipc_ready(struct socket *so, struct mbuf *m, int count)
{
 struct unpcb *unp, *unp2;
 struct socket *so2;
 int error;

 unp = sotounpcb(so);

 UNP_PCB_LOCK(unp);
 if ((unp2 = unp->unp_conn) == ((void*)0)) {
  UNP_PCB_UNLOCK(unp);
  goto error;
 }
 if (unp != unp2) {
  if (UNP_PCB_TRYLOCK(unp2) == 0) {
   unp_pcb_hold(unp2);
   UNP_PCB_UNLOCK(unp);
   UNP_PCB_LOCK(unp2);
   if (unp_pcb_rele(unp2))
    goto error;
  } else
   UNP_PCB_UNLOCK(unp);
 }
 so2 = unp2->unp_socket;

 SOCKBUF_LOCK(&so2->so_rcv);
 if ((error = sbready(&so2->so_rcv, m, count)) == 0)
  sorwakeup_locked(so2);
 else
  SOCKBUF_UNLOCK(&so2->so_rcv);

 UNP_PCB_UNLOCK(unp2);

 return (error);
 error:
 for (int i = 0; i < count; i++)
  m = m_free(m);
 return (ECONNRESET);
}
