
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_dmadesc64 {int dummy; } ;
struct bwn_dma_ring {int dummy; } ;


 int BWN_DMA64_RXSTATDPTR ;
 int BWN_DMA64_RXSTATUS ;
 int BWN_DMA_READ (struct bwn_dma_ring*,int ) ;

__attribute__((used)) static int
bwn_dma_64_get_curslot(struct bwn_dma_ring *dr)
{
 uint32_t val;

 val = BWN_DMA_READ(dr, BWN_DMA64_RXSTATUS);
 val &= BWN_DMA64_RXSTATDPTR;

 return (val / sizeof(struct bwn_dmadesc64));
}
