
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lro_mbuf_sort {int dummy; } ;
struct lro_entry {int dummy; } ;
struct lro_ctrl {unsigned int lro_mbuf_max; unsigned int lro_cnt; int lro_free; struct lro_mbuf_sort* lro_mbuf_data; int * lro_hash; int lro_hashsz; int lro_active; struct ifnet* ifp; int lro_length_lim; int lro_ackcnt_lim; scalar_t__ lro_mbuf_count; scalar_t__ lro_flushed; scalar_t__ lro_queued; scalar_t__ lro_bad_csum; } ;
struct ifnet {int dummy; } ;


 int ENOMEM ;
 int HASH_NOWAIT ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct lro_entry*,int ) ;
 int M_LRO ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TCP_LRO_ACKCNT_MAX ;
 int TCP_LRO_LENGTH_MAX ;
 int free (int *,int ) ;
 scalar_t__ malloc (size_t,int ,int) ;
 int memset (struct lro_ctrl*,int ,int) ;
 int next ;
 int * phashinit_flags (unsigned int,int ,int *,int ) ;

int
tcp_lro_init_args(struct lro_ctrl *lc, struct ifnet *ifp,
    unsigned lro_entries, unsigned lro_mbufs)
{
 struct lro_entry *le;
 size_t size;
 unsigned i, elements;

 lc->lro_bad_csum = 0;
 lc->lro_queued = 0;
 lc->lro_flushed = 0;
 lc->lro_mbuf_count = 0;
 lc->lro_mbuf_max = lro_mbufs;
 lc->lro_cnt = lro_entries;
 lc->lro_ackcnt_lim = TCP_LRO_ACKCNT_MAX;
 lc->lro_length_lim = TCP_LRO_LENGTH_MAX;
 lc->ifp = ifp;
 LIST_INIT(&lc->lro_free);
 LIST_INIT(&lc->lro_active);


 if (lro_entries > lro_mbufs)
  elements = lro_entries;
 else
  elements = lro_mbufs;
 lc->lro_hash = phashinit_flags(elements, M_LRO, &lc->lro_hashsz,
     HASH_NOWAIT);
 if (lc->lro_hash == ((void*)0)) {
  memset(lc, 0, sizeof(*lc));
  return (ENOMEM);
 }


 size = (lro_mbufs * sizeof(struct lro_mbuf_sort)) +
     (lro_entries * sizeof(*le));
 lc->lro_mbuf_data = (struct lro_mbuf_sort *)
     malloc(size, M_LRO, M_NOWAIT | M_ZERO);


 if (lc->lro_mbuf_data == ((void*)0)) {
  free(lc->lro_hash, M_LRO);
  memset(lc, 0, sizeof(*lc));
  return (ENOMEM);
 }

 le = (struct lro_entry *)
     (lc->lro_mbuf_data + lro_mbufs);


 for (i = 0; i != lro_entries; i++)
  LIST_INSERT_HEAD(&lc->lro_free, le + i, next);

 return (0);
}
