
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lio_droq {int pkts_pending; scalar_t__ refill_count; scalar_t__ refill_idx; scalar_t__ read_idx; } ;


 int atomic_store_rel_int (int *,int ) ;

__attribute__((used)) static void
lio_droq_reset_indices(struct lio_droq *droq)
{

 droq->read_idx = 0;
 droq->refill_idx = 0;
 droq->refill_count = 0;
 atomic_store_rel_int(&droq->pkts_pending, 0);
}
