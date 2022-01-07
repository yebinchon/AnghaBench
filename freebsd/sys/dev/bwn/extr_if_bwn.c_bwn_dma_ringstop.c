
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_dma_ring {int dummy; } ;


 int bwn_dma_cleanup (struct bwn_dma_ring*) ;

__attribute__((used)) static void
bwn_dma_ringstop(struct bwn_dma_ring **dr)
{

 if (dr == ((void*)0))
  return;

 bwn_dma_cleanup(*dr);
}
