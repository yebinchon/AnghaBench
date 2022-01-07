
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_dmadesc64 {int dummy; } ;
struct bwn_dma_ring {int dummy; } ;


 int BWN_DMA64_RXINDEX ;
 int BWN_DMA_WRITE (struct bwn_dma_ring*,int ,int ) ;

__attribute__((used)) static void
bwn_dma_64_set_curslot(struct bwn_dma_ring *dr, int slot)
{

 BWN_DMA_WRITE(dr, BWN_DMA64_RXINDEX,
     (uint32_t)(slot * sizeof(struct bwn_dmadesc64)));
}
