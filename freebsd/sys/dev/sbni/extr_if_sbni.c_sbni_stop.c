
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbni_softc {TYPE_1__* ifp; int wch; int * rx_buf_p; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int CSR0 ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_stop (int *) ;
 int drop_xmit_queue (struct sbni_softc*) ;
 int m_freem (int *) ;
 int sbni_outb (struct sbni_softc*,int ,int ) ;

__attribute__((used)) static void
sbni_stop(struct sbni_softc *sc)
{
 sbni_outb(sc, CSR0, 0);
 drop_xmit_queue(sc);

 if (sc->rx_buf_p) {
  m_freem(sc->rx_buf_p);
  sc->rx_buf_p = ((void*)0);
 }

 callout_stop(&sc->wch);
 sc->ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}
