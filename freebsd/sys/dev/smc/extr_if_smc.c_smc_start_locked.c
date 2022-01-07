
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct smc_softc {int smc_mask; int smc_tx; int smc_tq; struct mbuf* smc_pending; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; int if_snd; struct smc_softc* if_softc; } ;


 int ACK ;
 int ALLOC_INT ;
 int ETHER_CRC_LEN ;
 int ETHER_MAX_LEN ;
 int IFCAP_POLLING ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 scalar_t__ IFQ_IS_EMPTY (int *) ;
 int IST ;
 int MMUCR ;
 int MMUCR_CMD_TX_ALLOC ;
 int MSK ;
 int PKT_CTRL_DATA_LEN ;
 int SMC_ASSERT_LOCKED (struct smc_softc*) ;
 int TX_ALLOC_WAIT_TIME ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*,int *) ;
 int smc_mmu_wait (struct smc_softc*) ;
 int smc_read_1 (struct smc_softc*,int ) ;
 int smc_select_bank (struct smc_softc*,int) ;
 int smc_write_1 (struct smc_softc*,int ,int) ;
 int smc_write_2 (struct smc_softc*,int ,int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
smc_start_locked(struct ifnet *ifp)
{
 struct smc_softc *sc;
 struct mbuf *m;
 u_int len, npages, spin_count;

 sc = ifp->if_softc;
 SMC_ASSERT_LOCKED(sc);

 if (ifp->if_drv_flags & IFF_DRV_OACTIVE)
  return;
 if (IFQ_IS_EMPTY(&ifp->if_snd))
  return;




 IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
 len = m_length(m, ((void*)0));
 len += (len & 1);
 if (len > ETHER_MAX_LEN - ETHER_CRC_LEN) {
  if_printf(ifp, "large packet discarded\n");
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  m_freem(m);
  return;
 }




 ifp->if_drv_flags |= IFF_DRV_OACTIVE;
 sc->smc_pending = m;





 npages = (len + PKT_CTRL_DATA_LEN) >> 8;
 if (npages == 0)
  npages = 1;




 smc_select_bank(sc, 2);
 smc_mmu_wait(sc);
 smc_write_2(sc, MMUCR, MMUCR_CMD_TX_ALLOC | npages);




 spin_count = TX_ALLOC_WAIT_TIME;
 do {
  if (smc_read_1(sc, IST) & ALLOC_INT) {
   smc_write_1(sc, ACK, ALLOC_INT);
   break;
  }
 } while (--spin_count);





 if (spin_count == 0) {
  sc->smc_mask |= ALLOC_INT;
  if ((ifp->if_capenable & IFCAP_POLLING) == 0)
   smc_write_1(sc, MSK, sc->smc_mask);
  return;
 }

 taskqueue_enqueue(sc->smc_tq, &sc->smc_tx);
}
