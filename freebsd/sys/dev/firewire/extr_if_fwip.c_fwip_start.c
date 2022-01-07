
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ ifq_len; } ;
struct ifnet {int if_drv_flags; TYPE_1__ if_snd; scalar_t__ if_softc; } ;
struct fwip_softc {scalar_t__ dma_ch; } ;
struct fwip_eth_softc {struct fwip_softc* fwip; } ;


 int FWIPDEBUG (struct ifnet*,char*) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_OACTIVE ;
 int IF_DEQUEUE (TYPE_1__*,struct mbuf*) ;
 int fwip_async_output (struct fwip_softc*,struct ifnet*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int splimp () ;
 int splx (int) ;

__attribute__((used)) static void
fwip_start(struct ifnet *ifp)
{
 struct fwip_softc *fwip = ((struct fwip_eth_softc *)ifp->if_softc)->fwip;
 int s;

 FWIPDEBUG(ifp, "starting\n");

 if (fwip->dma_ch < 0) {
  struct mbuf *m = ((void*)0);

  FWIPDEBUG(ifp, "not ready\n");

  s = splimp();
  do {
   IF_DEQUEUE(&ifp->if_snd, m);
   if (m != ((void*)0))
    m_freem(m);
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  } while (m != ((void*)0));
  splx(s);

  return;
 }

 s = splimp();
 ifp->if_drv_flags |= IFF_DRV_OACTIVE;

 if (ifp->if_snd.ifq_len != 0)
  fwip_async_output(fwip, ifp);

 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 splx(s);
}
