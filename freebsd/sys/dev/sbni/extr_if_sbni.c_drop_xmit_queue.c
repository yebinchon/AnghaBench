
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbni_softc {int state; TYPE_1__* ifp; scalar_t__ outpos; scalar_t__ framelen; scalar_t__ tx_frameno; struct mbuf* tx_buf_p; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int if_drv_flags; int if_snd; } ;


 int FL_NEED_RESEND ;
 int FL_WAIT_ACK ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_OACTIVE ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int if_inc_counter (TYPE_1__*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
drop_xmit_queue(struct sbni_softc *sc)
{
 struct mbuf *m;

 if (sc->tx_buf_p) {
  m_freem(sc->tx_buf_p);
  sc->tx_buf_p = ((void*)0);
  if_inc_counter(sc->ifp, IFCOUNTER_OERRORS, 1);
 }

 for (;;) {
  IF_DEQUEUE(&sc->ifp->if_snd, m);
  if (m == ((void*)0))
   break;
  m_freem(m);
  if_inc_counter(sc->ifp, IFCOUNTER_OERRORS, 1);
 }

 sc->tx_frameno = 0;
 sc->framelen = 0;
 sc->outpos = 0;
 sc->state &= ~(FL_WAIT_ACK | FL_NEED_RESEND);
 sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
