
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_dma_ring {int dr_numslots; struct bwn_dma_ring* dr_meta; int * dr_txhdr_cache; } ;


 int BWN_MAXTXHDRSIZE ;
 int BWN_TX_SLOTS_PER_FRAME ;
 int M_DEVBUF ;
 int bwn_dma_free_descbufs (struct bwn_dma_ring*) ;
 int bwn_dma_free_ringmemory (struct bwn_dma_ring*) ;
 int contigfree (int *,int,int ) ;
 int free (struct bwn_dma_ring*,int ) ;

__attribute__((used)) static void
bwn_dma_ringfree(struct bwn_dma_ring **dr)
{

 if (dr == ((void*)0))
  return;

 bwn_dma_free_descbufs(*dr);
 bwn_dma_free_ringmemory(*dr);

 if ((*dr)->dr_txhdr_cache != ((void*)0)) {
  contigfree((*dr)->dr_txhdr_cache,
      ((*dr)->dr_numslots / BWN_TX_SLOTS_PER_FRAME) *
      BWN_MAXTXHDRSIZE, M_DEVBUF);
 }
 free((*dr)->dr_meta, M_DEVBUF);
 free(*dr, M_DEVBUF);

 *dr = ((void*)0);
}
