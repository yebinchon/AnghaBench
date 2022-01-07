
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_dmadesc32 {int dummy; } ;
struct bwn_dma_ring {int dummy; } ;


 int BWN_DMA32_TXINDEX ;
 int BWN_DMA_WRITE (struct bwn_dma_ring*,int ,int ) ;

__attribute__((used)) static void
bwn_dma_32_start_transfer(struct bwn_dma_ring *dr, int slot)
{

 BWN_DMA_WRITE(dr, BWN_DMA32_TXINDEX,
     (uint32_t)(slot * sizeof(struct bwn_dmadesc32)));
}
