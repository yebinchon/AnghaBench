
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct octeon_device {int device; } ;
struct mbuf {int * m_data; } ;
struct lio_droq_desc {int buffer_ptr; } ;
struct TYPE_3__ {int rx_alloc_failure; } ;
struct lio_droq {scalar_t__ max_count; size_t refill_idx; scalar_t__ refill_count; int buffer_size; TYPE_2__* recv_buf_list; TYPE_1__ stats; struct lio_droq_desc* desc_ring; } ;
struct TYPE_4__ {int * buffer; int * data; } ;


 scalar_t__ lio_droq_refill_pullup_descs (struct lio_droq*,struct lio_droq_desc*) ;
 size_t lio_incr_index (size_t,int,scalar_t__) ;
 int lio_map_ring (int ,int *,int ) ;
 void* lio_recv_buffer_alloc (int ) ;

uint32_t
lio_droq_refill(struct octeon_device *octeon_dev, struct lio_droq *droq)
{
 struct lio_droq_desc *desc_ring;
 void *buf = ((void*)0);
 uint32_t desc_refilled = 0;
 uint8_t *data;

 desc_ring = droq->desc_ring;

 while (droq->refill_count && (desc_refilled < droq->max_count)) {





  if (droq->recv_buf_list[droq->refill_idx].buffer == ((void*)0)) {
   buf = lio_recv_buffer_alloc(droq->buffer_size);




   if (buf == ((void*)0)) {
    droq->stats.rx_alloc_failure++;
    break;
   }

   droq->recv_buf_list[droq->refill_idx].buffer = buf;
   data = ((struct mbuf *)buf)->m_data;
  } else {
   data = ((struct mbuf *)droq->recv_buf_list
    [droq->refill_idx].buffer)->m_data;
  }

  droq->recv_buf_list[droq->refill_idx].data = data;

  desc_ring[droq->refill_idx].buffer_ptr =
      lio_map_ring(octeon_dev->device,
     droq->recv_buf_list[droq->refill_idx].buffer,
     droq->buffer_size);

  droq->refill_idx = lio_incr_index(droq->refill_idx, 1,
        droq->max_count);
  desc_refilled++;
  droq->refill_count--;
 }

 if (droq->refill_count)
  desc_refilled += lio_droq_refill_pullup_descs(droq, desc_ring);







 return (desc_refilled);
}
