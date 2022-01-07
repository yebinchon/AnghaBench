
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; } ;
union octeon_rh {TYPE_1__ r_dh; } ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct mbuf {int m_len; } ;
struct lio_droq_info {scalar_t__ length; union octeon_rh rh; } ;
struct TYPE_8__ {int dropped_toomany; int bytes_received; int pkts_received; } ;
struct TYPE_7__ {scalar_t__ drop_on_max; int farg; int (* fptr ) (struct mbuf*,scalar_t__,union octeon_rh*,struct lio_droq*,int ) ;} ;
struct lio_droq {size_t read_idx; scalar_t__ refill_count; scalar_t__ buffer_size; scalar_t__ refill_threshold; TYPE_4__ stats; TYPE_3__ ops; int lro; int pkts_credit_reg; int max_count; TYPE_2__* recv_buf_list; int q_no; } ;
struct TYPE_6__ {struct mbuf* buffer; scalar_t__ data; } ;


 int HD_OMIT_CHARS ;
 int LIO_DROQ_INFO_SIZE ;
 int __compiler_membar () ;
 scalar_t__ __predict_true (int) ;
 int hexdump (int *,int,int *,int ) ;
 int lio_dev_err (struct octeon_device*,char*,int ,size_t,scalar_t__) ;
 scalar_t__ lio_droq_dispatch_pkt (struct octeon_device*,struct lio_droq*,union octeon_rh*,struct lio_droq_info*) ;
 int lio_droq_drop_packets (struct octeon_device*,struct lio_droq*,scalar_t__) ;
 int lio_droq_refill (struct octeon_device*,struct lio_droq*) ;
 void* lio_incr_index (size_t,int,int ) ;
 scalar_t__ lio_opcode_slow_path (union octeon_rh*) ;
 int lio_recv_buffer_free (struct mbuf*) ;
 int lio_swap_8B_data (int *,int) ;
 int lio_write_csr32 (struct octeon_device*,int ,int) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int stub1 (struct mbuf*,scalar_t__,union octeon_rh*,struct lio_droq*,int ) ;
 int tcp_lro_flush_all (int *) ;
 int wmb () ;

__attribute__((used)) static uint32_t
lio_droq_fast_process_packets(struct octeon_device *oct, struct lio_droq *droq,
         uint32_t pkts_to_process)
{
 struct lio_droq_info *info;
 union octeon_rh *rh;
 uint32_t pkt, pkt_count, total_len = 0;

 pkt_count = pkts_to_process;

 for (pkt = 0; pkt < pkt_count; pkt++) {
  struct mbuf *nicbuf = ((void*)0);
  uint32_t pkt_len = 0;

  info = (struct lio_droq_info *)
      droq->recv_buf_list[droq->read_idx].data;

  lio_swap_8B_data((uint64_t *)info, 2);

  if (!info->length) {
   lio_dev_err(oct,
        "DROQ[%d] idx: %d len:0, pkt_cnt: %d\n",
        droq->q_no, droq->read_idx, pkt_count);
   hexdump((uint8_t *)info, LIO_DROQ_INFO_SIZE, ((void*)0),
    HD_OMIT_CHARS);
   pkt++;
   lio_incr_index(droq->read_idx, 1, droq->max_count);
   droq->refill_count++;
   break;
  }

  rh = &info->rh;

  info->length += 8;
  rh->r_dh.len += (LIO_DROQ_INFO_SIZE + 7) / 8;

  total_len += (uint32_t)info->length;
  if (lio_opcode_slow_path(rh)) {
   uint32_t buf_cnt;

   buf_cnt = lio_droq_dispatch_pkt(oct, droq, rh, info);
   droq->read_idx = lio_incr_index(droq->read_idx, buf_cnt,
       droq->max_count);
   droq->refill_count += buf_cnt;
  } else {
   if (info->length <= droq->buffer_size) {
    pkt_len = (uint32_t)info->length;
    nicbuf = droq->recv_buf_list[
             droq->read_idx].buffer;
    nicbuf->m_len = pkt_len;
    droq->recv_buf_list[droq->read_idx].buffer =
     ((void*)0);

    droq->read_idx =
     lio_incr_index(droq->read_idx,
             1, droq->max_count);
    droq->refill_count++;
   } else {
    bool secondary_frag = 0;

    pkt_len = 0;

    while (pkt_len < info->length) {
     int frag_len, idx = droq->read_idx;
     struct mbuf *buffer;

     frag_len =
      ((pkt_len + droq->buffer_size) >
       info->length) ?
      ((uint32_t)info->length -
       pkt_len) : droq->buffer_size;

     buffer = ((struct mbuf *)
        droq->recv_buf_list[idx].
        buffer);
     buffer->m_len = frag_len;
     if (__predict_true(secondary_frag)) {
      m_cat(nicbuf, buffer);
     } else {
      nicbuf = buffer;
      secondary_frag = 1;
     }

     droq->recv_buf_list[droq->read_idx].
      buffer = ((void*)0);

     pkt_len += frag_len;
     droq->read_idx =
      lio_incr_index(droq->read_idx,
              1,
              droq->max_count);
     droq->refill_count++;
    }
   }

   if (nicbuf != ((void*)0)) {
    if (droq->ops.fptr != ((void*)0)) {
     droq->ops.fptr(nicbuf, pkt_len, rh,
             droq, droq->ops.farg);
    } else {
     lio_recv_buffer_free(nicbuf);
    }
   }
  }

  if (droq->refill_count >= droq->refill_threshold) {
   int desc_refilled = lio_droq_refill(oct, droq);






   wmb();
   lio_write_csr32(oct, droq->pkts_credit_reg,
     desc_refilled);

   __compiler_membar();
  }
 }


 droq->stats.pkts_received += pkt;
 droq->stats.bytes_received += total_len;

 tcp_lro_flush_all(&droq->lro);

 if ((droq->ops.drop_on_max) && (pkts_to_process - pkt)) {
  lio_droq_drop_packets(oct, droq, (pkts_to_process - pkt));

  droq->stats.dropped_toomany += (pkts_to_process - pkt);
  return (pkts_to_process);
 }

 return (pkt);
}
