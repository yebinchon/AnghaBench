
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_dma_ring {scalar_t__ dr_type; int dr_base; int dr_mac; scalar_t__ dr_tx; } ;


 scalar_t__ BHND_DMA_ADDR_64BIT ;
 int BWN_DMA32_RXRING ;
 int BWN_DMA32_TXRING ;
 int BWN_DMA64_RXRINGHI ;
 int BWN_DMA64_RXRINGLO ;
 int BWN_DMA64_TXRINGHI ;
 int BWN_DMA64_TXRINGLO ;
 int BWN_DMA_WRITE (struct bwn_dma_ring*,int ,int ) ;
 int bwn_dma_rx_reset (int ,int ,scalar_t__) ;
 int bwn_dma_tx_reset (int ,int ,scalar_t__) ;

__attribute__((used)) static void
bwn_dma_cleanup(struct bwn_dma_ring *dr)
{

 if (dr->dr_tx) {
  bwn_dma_tx_reset(dr->dr_mac, dr->dr_base, dr->dr_type);
  if (dr->dr_type == BHND_DMA_ADDR_64BIT) {
   BWN_DMA_WRITE(dr, BWN_DMA64_TXRINGLO, 0);
   BWN_DMA_WRITE(dr, BWN_DMA64_TXRINGHI, 0);
  } else
   BWN_DMA_WRITE(dr, BWN_DMA32_TXRING, 0);
 } else {
  bwn_dma_rx_reset(dr->dr_mac, dr->dr_base, dr->dr_type);
  if (dr->dr_type == BHND_DMA_ADDR_64BIT) {
   BWN_DMA_WRITE(dr, BWN_DMA64_RXRINGLO, 0);
   BWN_DMA_WRITE(dr, BWN_DMA64_RXRINGHI, 0);
  } else
   BWN_DMA_WRITE(dr, BWN_DMA32_RXRING, 0);
 }
}
