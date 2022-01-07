
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct lio_droq_desc {scalar_t__ buffer_ptr; } ;
struct lio_droq {size_t refill_idx; size_t read_idx; int max_count; int refill_count; TYPE_1__* recv_buf_list; } ;
struct TYPE_2__ {int * buffer; int data; } ;


 void* lio_incr_index (size_t,int,int ) ;

__attribute__((used)) static inline uint32_t
lio_droq_refill_pullup_descs(struct lio_droq *droq,
        struct lio_droq_desc *desc_ring)
{
 uint32_t desc_refilled = 0;
 uint32_t refill_index = droq->refill_idx;

 while (refill_index != droq->read_idx) {
  if (droq->recv_buf_list[refill_index].buffer != ((void*)0)) {
   droq->recv_buf_list[droq->refill_idx].buffer =
    droq->recv_buf_list[refill_index].buffer;
   droq->recv_buf_list[droq->refill_idx].data =
    droq->recv_buf_list[refill_index].data;
   desc_ring[droq->refill_idx].buffer_ptr =
    desc_ring[refill_index].buffer_ptr;
   droq->recv_buf_list[refill_index].buffer = ((void*)0);
   desc_ring[refill_index].buffer_ptr = 0;
   do {
    droq->refill_idx =
     lio_incr_index(droq->refill_idx, 1,
             droq->max_count);
    desc_refilled++;
    droq->refill_count--;
   } while (droq->recv_buf_list[droq->refill_idx].buffer !=
     ((void*)0));
  }
  refill_index = lio_incr_index(refill_index, 1, droq->max_count);
 }
 return (desc_refilled);
}
