
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lro_entry {int m_head; } ;
struct lro_ctrl {unsigned int lro_mbuf_count; TYPE_1__* lro_mbuf_data; scalar_t__ lro_hashsz; TYPE_1__* lro_hash; int lro_active; int lro_free; } ;
struct TYPE_2__ {int mb; } ;


 struct lro_entry* LIST_FIRST (int *) ;
 int LIST_INIT (int *) ;
 int M_LRO ;
 int free (TYPE_1__*,int ) ;
 int m_freem (int ) ;
 int tcp_lro_active_remove (struct lro_entry*) ;

void
tcp_lro_free(struct lro_ctrl *lc)
{
 struct lro_entry *le;
 unsigned x;


 LIST_INIT(&lc->lro_free);


 while ((le = LIST_FIRST(&lc->lro_active)) != ((void*)0)) {
  tcp_lro_active_remove(le);
  m_freem(le->m_head);
 }


 free(lc->lro_hash, M_LRO);
 lc->lro_hash = ((void*)0);
 lc->lro_hashsz = 0;


 for (x = 0; x != lc->lro_mbuf_count; x++)
  m_freem(lc->lro_mbuf_data[x].mb);
 lc->lro_mbuf_count = 0;


 free(lc->lro_mbuf_data, M_LRO);
 lc->lro_mbuf_data = ((void*)0);
}
