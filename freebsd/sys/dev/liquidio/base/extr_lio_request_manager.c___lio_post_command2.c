
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lio_iq_post_status {int index; int status; } ;
struct lio_instr_queue {int max_count; int host_write_index; int instr_pending; int fill_cnt; } ;
typedef scalar_t__ int32_t ;


 int LIO_IQ_SEND_FAILED ;
 int LIO_IQ_SEND_OK ;
 int LIO_IQ_SEND_STOP ;
 int __lio_copy_cmd_into_iq (struct lio_instr_queue*,int *) ;
 int atomic_add_int (int *,int) ;
 scalar_t__ atomic_load_acq_int (int *) ;
 int lio_incr_index (int,int,int) ;
 int wmb () ;

__attribute__((used)) static inline struct lio_iq_post_status
__lio_post_command2(struct lio_instr_queue *iq, uint8_t *cmd)
{
 struct lio_iq_post_status st;

 st.status = LIO_IQ_SEND_OK;





 if (atomic_load_acq_int(&iq->instr_pending) >=
     (int32_t)(iq->max_count - 1)) {
  st.status = LIO_IQ_SEND_FAILED;
  st.index = -1;
  return (st);
 }

 if (atomic_load_acq_int(&iq->instr_pending) >=
     (int32_t)(iq->max_count - 2))
  st.status = LIO_IQ_SEND_STOP;

 __lio_copy_cmd_into_iq(iq, cmd);


 st.index = iq->host_write_index;
 iq->host_write_index = lio_incr_index(iq->host_write_index, 1,
           iq->max_count);
 iq->fill_cnt++;





 wmb();

 atomic_add_int(&iq->instr_pending, 1);

 return (st);
}
