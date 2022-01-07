
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct bwn_mac {scalar_t__ mac_dmatype; } ;


 scalar_t__ BHND_DMA_ADDR_64BIT ;
 scalar_t__ BWN_DMA32_RXCTL ;
 int BWN_DMA32_RXDIRECTFIFO ;
 scalar_t__ BWN_DMA64_RXCTL ;
 int BWN_DMA64_RXDIRECTFIFO ;
 int BWN_READ_4 (struct bwn_mac*,scalar_t__) ;
 int BWN_WRITE_4 (struct bwn_mac*,scalar_t__,int ) ;
 scalar_t__ bwn_dma_base (scalar_t__,int) ;

__attribute__((used)) static void
bwn_dma_rxdirectfifo(struct bwn_mac *mac, int idx, uint8_t enable)
{
 uint32_t ctl;
 uint16_t base;

 base = bwn_dma_base(mac->mac_dmatype, idx);
 if (mac->mac_dmatype == BHND_DMA_ADDR_64BIT) {
  ctl = BWN_READ_4(mac, base + BWN_DMA64_RXCTL);
  ctl &= ~BWN_DMA64_RXDIRECTFIFO;
  if (enable)
   ctl |= BWN_DMA64_RXDIRECTFIFO;
  BWN_WRITE_4(mac, base + BWN_DMA64_RXCTL, ctl);
 } else {
  ctl = BWN_READ_4(mac, base + BWN_DMA32_RXCTL);
  ctl &= ~BWN_DMA32_RXDIRECTFIFO;
  if (enable)
   ctl |= BWN_DMA32_RXDIRECTFIFO;
  BWN_WRITE_4(mac, base + BWN_DMA32_RXCTL, ctl);
 }
}
