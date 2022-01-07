
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int pool; int i; scalar_t__ addr; } ;
struct TYPE_13__ {TYPE_3__ s; } ;
struct TYPE_9__ {int bufs; } ;
struct TYPE_10__ {TYPE_1__ s; } ;
struct TYPE_12__ {TYPE_5__ packet_ptr; TYPE_2__ word2; } ;
typedef TYPE_4__ cvmx_wqe_t ;
typedef TYPE_5__ cvmx_buf_ptr_t ;


 int CVMX_FPA_PACKET_POOL_SIZE ;
 int CVMX_FPA_WQE_POOL ;
 int DONT_WRITEBACK (int) ;
 scalar_t__ __predict_false (int) ;
 TYPE_4__* cvm_oct_get_buffer_ptr (TYPE_5__) ;
 int cvmx_fpa_free (TYPE_4__*,int ,int ) ;
 scalar_t__ cvmx_phys_to_ptr (scalar_t__) ;

int cvm_oct_free_work(void *work_queue_entry)
{
 cvmx_wqe_t *work = work_queue_entry;

 int segments = work->word2.s.bufs;
 cvmx_buf_ptr_t segment_ptr = work->packet_ptr;

 while (segments--) {
  cvmx_buf_ptr_t next_ptr = *(cvmx_buf_ptr_t *)cvmx_phys_to_ptr(segment_ptr.s.addr-8);
  if (__predict_false(!segment_ptr.s.i))
   cvmx_fpa_free(cvm_oct_get_buffer_ptr(segment_ptr), segment_ptr.s.pool, DONT_WRITEBACK(CVMX_FPA_PACKET_POOL_SIZE/128));
  segment_ptr = next_ptr;
 }
 cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, DONT_WRITEBACK(1));

 return 0;
}
