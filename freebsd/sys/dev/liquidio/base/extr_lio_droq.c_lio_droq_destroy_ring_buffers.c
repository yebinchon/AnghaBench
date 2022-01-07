
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_droq {size_t max_count; TYPE_1__* recv_buf_list; } ;
struct TYPE_2__ {int * buffer; } ;


 int lio_droq_reset_indices (struct lio_droq*) ;
 int lio_recv_buffer_free (int *) ;

__attribute__((used)) static void
lio_droq_destroy_ring_buffers(struct octeon_device *oct,
         struct lio_droq *droq)
{
 uint32_t i;

 for (i = 0; i < droq->max_count; i++) {
  if (droq->recv_buf_list[i].buffer != ((void*)0)) {
   lio_recv_buffer_free(droq->recv_buf_list[i].buffer);
   droq->recv_buf_list[i].buffer = ((void*)0);
  }
 }

 lio_droq_reset_indices(droq);
}
