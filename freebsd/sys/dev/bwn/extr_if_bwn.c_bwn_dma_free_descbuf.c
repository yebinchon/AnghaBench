
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_dmadesc_meta {int * mt_ni; int * mt_m; } ;
struct bwn_dma_ring {int dummy; } ;


 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bwn_dma_free_descbuf(struct bwn_dma_ring *dr,
    struct bwn_dmadesc_meta *meta)
{

 if (meta->mt_m != ((void*)0)) {
  m_freem(meta->mt_m);
  meta->mt_m = ((void*)0);
 }
 if (meta->mt_ni != ((void*)0)) {
  ieee80211_free_node(meta->mt_ni);
  meta->mt_ni = ((void*)0);
 }
}
