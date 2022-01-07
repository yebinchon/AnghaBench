
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vte_softc {struct ifnet* vte_ifp; } ;
struct vte_maddr_ctx {int* mchash; int** rxfilt_perf; scalar_t__ nperf; } ;
struct ifnet {int if_flags; } ;


 int CSR_READ_2 (struct vte_softc*,scalar_t__) ;
 int CSR_WRITE_2 (struct vte_softc*,scalar_t__,int) ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int MCR0_BROADCAST_DIS ;
 int MCR0_MULTICAST ;
 int MCR0_PROMISC ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 scalar_t__ VTE_MAR0 ;
 scalar_t__ VTE_MAR1 ;
 scalar_t__ VTE_MAR2 ;
 scalar_t__ VTE_MAR3 ;
 scalar_t__ VTE_MCR0 ;
 scalar_t__ VTE_RXFILTER_PEEFECT_BASE ;
 int VTE_RXFILT_PERFECT_CNT ;
 int bzero (int*,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct vte_maddr_ctx*) ;
 int vte_hash_maddr ;

__attribute__((used)) static void
vte_rxfilter(struct vte_softc *sc)
{
 struct ifnet *ifp;
 struct vte_maddr_ctx ctx;
 uint16_t mcr;
 int i;

 VTE_LOCK_ASSERT(sc);

 ifp = sc->vte_ifp;

 bzero(ctx.mchash, sizeof(ctx.mchash));
 for (i = 0; i < VTE_RXFILT_PERFECT_CNT; i++) {
  ctx.rxfilt_perf[i][0] = 0xFFFF;
  ctx.rxfilt_perf[i][1] = 0xFFFF;
  ctx.rxfilt_perf[i][2] = 0xFFFF;
 }
 ctx.nperf = 0;

 mcr = CSR_READ_2(sc, VTE_MCR0);
 mcr &= ~(MCR0_PROMISC | MCR0_MULTICAST);
 mcr |= MCR0_BROADCAST_DIS;
 if ((ifp->if_flags & IFF_BROADCAST) != 0)
  mcr &= ~MCR0_BROADCAST_DIS;
 if ((ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI)) != 0) {
  if ((ifp->if_flags & IFF_PROMISC) != 0)
   mcr |= MCR0_PROMISC;
  if ((ifp->if_flags & IFF_ALLMULTI) != 0)
   mcr |= MCR0_MULTICAST;
  ctx.mchash[0] = 0xFFFF;
  ctx.mchash[1] = 0xFFFF;
  ctx.mchash[2] = 0xFFFF;
  ctx.mchash[3] = 0xFFFF;
  goto chipit;
 }

 if_foreach_llmaddr(ifp, vte_hash_maddr, &ctx);
 if (ctx.mchash[0] != 0 || ctx.mchash[1] != 0 ||
     ctx.mchash[2] != 0 || ctx.mchash[3] != 0)
  mcr |= MCR0_MULTICAST;

chipit:

 CSR_WRITE_2(sc, VTE_MAR0, ctx.mchash[0]);
 CSR_WRITE_2(sc, VTE_MAR1, ctx.mchash[1]);
 CSR_WRITE_2(sc, VTE_MAR2, ctx.mchash[2]);
 CSR_WRITE_2(sc, VTE_MAR3, ctx.mchash[3]);

 for (i = 0; i < VTE_RXFILT_PERFECT_CNT; i++) {
  CSR_WRITE_2(sc, VTE_RXFILTER_PEEFECT_BASE + 8 * i + 0,
      ctx.rxfilt_perf[i][0]);
  CSR_WRITE_2(sc, VTE_RXFILTER_PEEFECT_BASE + 8 * i + 2,
      ctx.rxfilt_perf[i][1]);
  CSR_WRITE_2(sc, VTE_RXFILTER_PEEFECT_BASE + 8 * i + 4,
      ctx.rxfilt_perf[i][2]);
 }
 CSR_WRITE_2(sc, VTE_MCR0, mcr);
 CSR_READ_2(sc, VTE_MCR0);
}
