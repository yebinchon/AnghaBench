
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct octeon_device {struct lio_instr_queue** instr_queue; } ;
struct lio_iq_post_status {scalar_t__ status; int index; } ;
struct lio_instr_queue {int post_lock; } ;


 int LIO_INCR_INSTRQUEUE_PKT_COUNT (struct octeon_device*,size_t,int ,int) ;
 scalar_t__ LIO_IQ_SEND_FAILED ;
 scalar_t__ LIO_IQ_SEND_STOP ;
 int __lio_add_to_request_list (struct lio_instr_queue*,int ,void*,size_t) ;
 struct lio_iq_post_status __lio_post_command2 (struct lio_instr_queue*,void*) ;
 int bytes_sent ;
 int instr_dropped ;
 int instr_posted ;
 int lio_ring_doorbell (struct octeon_device*,struct lio_instr_queue*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
lio_send_command(struct octeon_device *oct, uint32_t iq_no,
   uint32_t force_db, void *cmd, void *buf,
   uint32_t datasize, uint32_t reqtype)
{
 struct lio_iq_post_status st;
 struct lio_instr_queue *iq = oct->instr_queue[iq_no];





 mtx_lock(&iq->post_lock);

 st = __lio_post_command2(iq, cmd);

 if (st.status != LIO_IQ_SEND_FAILED) {
  __lio_add_to_request_list(iq, st.index, buf, reqtype);
  LIO_INCR_INSTRQUEUE_PKT_COUNT(oct, iq_no, bytes_sent, datasize);
  LIO_INCR_INSTRQUEUE_PKT_COUNT(oct, iq_no, instr_posted, 1);

  if (force_db || (st.status == LIO_IQ_SEND_STOP))
   lio_ring_doorbell(oct, iq);
 } else {
  LIO_INCR_INSTRQUEUE_PKT_COUNT(oct, iq_no, instr_dropped, 1);
 }

 mtx_unlock(&iq->post_lock);






 return (st.status);
}
