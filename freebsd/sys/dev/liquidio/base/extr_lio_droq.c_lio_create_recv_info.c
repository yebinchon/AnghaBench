
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef void* uint16_t ;
struct octeon_device {scalar_t__ octeon_id; } ;
struct lio_recv_pkt {size_t length; size_t* buffer_size; int ** buffer_ptr; void* octeon_id; void* buffer_count; int rh; } ;
struct lio_recv_info {struct lio_recv_pkt* recv_pkt; } ;
struct lio_droq_info {scalar_t__ length; int rh; } ;
struct lio_droq {size_t buffer_size; int max_count; TYPE_1__* recv_buf_list; } ;
struct __dispatch {int dummy; } ;
struct TYPE_2__ {int * buffer; scalar_t__ data; } ;


 struct lio_recv_info* lio_alloc_recv_info (int) ;
 size_t lio_incr_index (size_t,int,int ) ;

__attribute__((used)) static inline struct lio_recv_info *
lio_create_recv_info(struct octeon_device *octeon_dev, struct lio_droq *droq,
       uint32_t buf_cnt, uint32_t idx)
{
 struct lio_droq_info *info;
 struct lio_recv_pkt *recv_pkt;
 struct lio_recv_info *recv_info;
 uint32_t bytes_left, i;

 info = (struct lio_droq_info *)droq->recv_buf_list[idx].data;

 recv_info = lio_alloc_recv_info(sizeof(struct __dispatch));
 if (recv_info == ((void*)0))
  return (((void*)0));

 recv_pkt = recv_info->recv_pkt;
 recv_pkt->rh = info->rh;
 recv_pkt->length = (uint32_t)info->length;
 recv_pkt->buffer_count = (uint16_t)buf_cnt;
 recv_pkt->octeon_id = (uint16_t)octeon_dev->octeon_id;

 i = 0;
 bytes_left = (uint32_t)info->length;

 while (buf_cnt) {
  recv_pkt->buffer_size[i] = (bytes_left >= droq->buffer_size) ?
   droq->buffer_size : bytes_left;

  recv_pkt->buffer_ptr[i] = droq->recv_buf_list[idx].buffer;
  droq->recv_buf_list[idx].buffer = ((void*)0);

  idx = lio_incr_index(idx, 1, droq->max_count);
  bytes_left -= droq->buffer_size;
  i++;
  buf_cnt--;
 }

 return (recv_info);
}
