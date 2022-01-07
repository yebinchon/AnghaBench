
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct vge_softc {scalar_t__ vge_tx_coal_pkt; scalar_t__ vge_rx_coal_pkt; scalar_t__ vge_int_holdoff; } ;


 scalar_t__ CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,scalar_t__) ;
 int VGE_CAMCTL ;
 scalar_t__ VGE_CR3_INT_HOLDOFF ;
 int VGE_CRC3 ;
 int VGE_CRS3 ;
 int VGE_INTCTL1 ;
 scalar_t__ VGE_INTCTL_HC_RELOAD ;
 scalar_t__ VGE_INTCTL_RXINTSUP_DISABLE ;
 scalar_t__ VGE_INTCTL_SC_RELOAD ;
 scalar_t__ VGE_INTCTL_TXINTSUP_DISABLE ;
 int VGE_INTHOLDOFF ;
 scalar_t__ VGE_INT_HOLDOFF_USEC (scalar_t__) ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 scalar_t__ VGE_PAGESEL_INTHLDOFF ;
 scalar_t__ VGE_PAGESEL_RXSUPPTHR ;
 scalar_t__ VGE_PAGESEL_TXSUPPTHR ;
 int VGE_RXSUPPTHR ;
 int VGE_TXSUPPTHR ;

__attribute__((used)) static void
vge_intr_holdoff(struct vge_softc *sc)
{
 uint8_t intctl;

 VGE_LOCK_ASSERT(sc);
 CSR_WRITE_1(sc, VGE_CAMCTL, VGE_PAGESEL_TXSUPPTHR);
 CSR_WRITE_1(sc, VGE_TXSUPPTHR, sc->vge_tx_coal_pkt);


 CSR_WRITE_1(sc, VGE_CAMCTL, VGE_PAGESEL_RXSUPPTHR);
 CSR_WRITE_1(sc, VGE_RXSUPPTHR, sc->vge_rx_coal_pkt);

 intctl = CSR_READ_1(sc, VGE_INTCTL1);
 intctl &= ~VGE_INTCTL_SC_RELOAD;
 intctl |= VGE_INTCTL_HC_RELOAD;
 if (sc->vge_tx_coal_pkt <= 0)
  intctl |= VGE_INTCTL_TXINTSUP_DISABLE;
 else
  intctl &= ~VGE_INTCTL_TXINTSUP_DISABLE;
 if (sc->vge_rx_coal_pkt <= 0)
  intctl |= VGE_INTCTL_RXINTSUP_DISABLE;
 else
  intctl &= ~VGE_INTCTL_RXINTSUP_DISABLE;
 CSR_WRITE_1(sc, VGE_INTCTL1, intctl);
 CSR_WRITE_1(sc, VGE_CRC3, VGE_CR3_INT_HOLDOFF);
 if (sc->vge_int_holdoff > 0) {

  CSR_WRITE_1(sc, VGE_CAMCTL, VGE_PAGESEL_INTHLDOFF);
  CSR_WRITE_1(sc, VGE_INTHOLDOFF,
      VGE_INT_HOLDOFF_USEC(sc->vge_int_holdoff));

  CSR_WRITE_1(sc, VGE_CRS3, VGE_CR3_INT_HOLDOFF);
 }
}
