
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_dma_ring {int dummy; } ;


 int BWN_DMA64_TXCTL ;
 int BWN_DMA64_TXSUSPEND ;
 int BWN_DMA_READ (struct bwn_dma_ring*,int ) ;
 int BWN_DMA_WRITE (struct bwn_dma_ring*,int ,int) ;

__attribute__((used)) static void
bwn_dma_64_suspend(struct bwn_dma_ring *dr)
{

 BWN_DMA_WRITE(dr, BWN_DMA64_TXCTL,
     BWN_DMA_READ(dr, BWN_DMA64_TXCTL) | BWN_DMA64_TXSUSPEND);
}
