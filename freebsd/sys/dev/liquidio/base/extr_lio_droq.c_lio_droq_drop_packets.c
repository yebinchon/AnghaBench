
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_droq_info {scalar_t__ length; } ;
struct TYPE_4__ {int bytes_received; } ;
struct lio_droq {size_t read_idx; scalar_t__ refill_count; int max_count; int buffer_size; TYPE_2__ stats; TYPE_1__* recv_buf_list; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int lio_dev_err (struct octeon_device*,char*) ;
 scalar_t__ lio_droq_get_bufcount (int ,scalar_t__) ;
 size_t lio_incr_index (size_t,scalar_t__,int ) ;
 int lio_swap_8B_data (int *,int) ;

__attribute__((used)) static inline void
lio_droq_drop_packets(struct octeon_device *oct, struct lio_droq *droq,
        uint32_t cnt)
{
 struct lio_droq_info *info;
 uint32_t i = 0, buf_cnt;

 for (i = 0; i < cnt; i++) {
  info = (struct lio_droq_info *)
   droq->recv_buf_list[droq->read_idx].data;

  lio_swap_8B_data((uint64_t *)info, 2);

  if (info->length) {
   info->length += 8;
   droq->stats.bytes_received += info->length;
   buf_cnt = lio_droq_get_bufcount(droq->buffer_size,
       (uint32_t)info->length);
  } else {
   lio_dev_err(oct, "DROQ: In drop: pkt with len 0\n");
   buf_cnt = 1;
  }

  droq->read_idx = lio_incr_index(droq->read_idx, buf_cnt,
      droq->max_count);
  droq->refill_count += buf_cnt;
 }
}
