
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nge_softc {int nge_flags; struct ifnet* nge_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int if_snd; } ;


 int CSR_READ_4 (struct nge_softc*,int ) ;
 int CSR_WRITE_4 (struct nge_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int NGE_CSR ;
 int NGE_CSR_RX_ENABLE ;
 int NGE_FLAG_SUSPENDED ;
 int NGE_FLAG_TBI ;
 int NGE_GPIO ;
 int NGE_GPIO_GP3_OUT ;
 int NGE_IER ;
 int NGE_INTRS ;
 int NGE_ISR ;
 int NGE_ISR_RX_DESC_OK ;
 int NGE_ISR_RX_ERR ;
 int NGE_ISR_RX_FIFO_OFLOW ;
 int NGE_ISR_RX_IDLE ;
 int NGE_ISR_RX_OFLOW ;
 int NGE_ISR_RX_OK ;
 int NGE_ISR_SYSERR ;
 int NGE_ISR_TX_DESC_OK ;
 int NGE_ISR_TX_ERR ;
 int NGE_ISR_TX_IDLE ;
 int NGE_ISR_TX_OK ;
 int NGE_LOCK (struct nge_softc*) ;
 int NGE_SETBIT (struct nge_softc*,int ,int ) ;
 int NGE_UNLOCK (struct nge_softc*) ;
 int nge_init_locked (struct nge_softc*) ;
 int nge_rxeof (struct nge_softc*) ;
 int nge_start_locked (struct ifnet*) ;
 int nge_txeof (struct nge_softc*) ;

__attribute__((used)) static void
nge_intr(void *arg)
{
 struct nge_softc *sc;
 struct ifnet *ifp;
 uint32_t status;

 sc = (struct nge_softc *)arg;
 ifp = sc->nge_ifp;

 NGE_LOCK(sc);

 if ((sc->nge_flags & NGE_FLAG_SUSPENDED) != 0)
  goto done_locked;


 status = CSR_READ_4(sc, NGE_ISR);
 if (status == 0xffffffff || (status & NGE_INTRS) == 0)
  goto done_locked;




 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  goto done_locked;


 CSR_WRITE_4(sc, NGE_IER, 0);


 if ((sc->nge_flags & NGE_FLAG_TBI) != 0)
  CSR_WRITE_4(sc, NGE_GPIO,
      CSR_READ_4(sc, NGE_GPIO) | NGE_GPIO_GP3_OUT);

 for (; (status & NGE_INTRS) != 0;) {
  if ((status & (NGE_ISR_TX_DESC_OK | NGE_ISR_TX_ERR |
      NGE_ISR_TX_OK | NGE_ISR_TX_IDLE)) != 0)
   nge_txeof(sc);

  if ((status & (NGE_ISR_RX_DESC_OK | NGE_ISR_RX_ERR |
      NGE_ISR_RX_OFLOW | NGE_ISR_RX_FIFO_OFLOW |
      NGE_ISR_RX_IDLE | NGE_ISR_RX_OK)) != 0)
   nge_rxeof(sc);

  if ((status & NGE_ISR_RX_IDLE) != 0)
   NGE_SETBIT(sc, NGE_CSR, NGE_CSR_RX_ENABLE);

  if ((status & NGE_ISR_SYSERR) != 0) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   nge_init_locked(sc);
  }

  status = CSR_READ_4(sc, NGE_ISR);
 }


 CSR_WRITE_4(sc, NGE_IER, 1);

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  nge_start_locked(ifp);


 if ((sc->nge_flags & NGE_FLAG_TBI) != 0)
  CSR_WRITE_4(sc, NGE_GPIO,
      CSR_READ_4(sc, NGE_GPIO) & ~NGE_GPIO_GP3_OUT);

done_locked:
 NGE_UNLOCK(sc);
}
