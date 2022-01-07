
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ sb_cc; int my_rwnd_control_len; } ;
struct sctp_tcb {TYPE_1__ asoc; TYPE_2__* sctp_socket; } ;
struct sctp_association {int cnt_on_reasm_queue; scalar_t__ size_on_reasm_queue; int cnt_on_all_streams; scalar_t__ size_on_all_streams; } ;
struct TYPE_4__ {int so_rcv; } ;


 int KASSERT (int,char*) ;
 int MSIZE ;
 int SCTP_MINIMAL_RWND ;
 int SCTP_SB_LIMIT_RCV (TYPE_2__*) ;
 int max (int ,int ) ;
 scalar_t__ sctp_sbspace (TYPE_1__*,int *) ;
 int sctp_sbspace_sub (int,int) ;

uint32_t
sctp_calc_rwnd(struct sctp_tcb *stcb, struct sctp_association *asoc)
{
 uint32_t calc = 0;







 if (stcb->sctp_socket == ((void*)0)) {
  return (calc);
 }

 KASSERT(asoc->cnt_on_reasm_queue > 0 || asoc->size_on_reasm_queue == 0,
     ("size_on_reasm_queue is %u", asoc->size_on_reasm_queue));
 KASSERT(asoc->cnt_on_all_streams > 0 || asoc->size_on_all_streams == 0,
     ("size_on_all_streams is %u", asoc->size_on_all_streams));
 if (stcb->asoc.sb_cc == 0 &&
     asoc->cnt_on_reasm_queue == 0 &&
     asoc->cnt_on_all_streams == 0) {

  calc = max(SCTP_SB_LIMIT_RCV(stcb->sctp_socket), SCTP_MINIMAL_RWND);
  return (calc);
 }

 calc = (uint32_t)sctp_sbspace(&stcb->asoc, &stcb->sctp_socket->so_rcv);




 calc = sctp_sbspace_sub(calc, (uint32_t)(asoc->size_on_reasm_queue +
     asoc->cnt_on_reasm_queue * MSIZE));
 calc = sctp_sbspace_sub(calc, (uint32_t)(asoc->size_on_all_streams +
     asoc->cnt_on_all_streams * MSIZE));
 if (calc == 0) {

  return (calc);
 }


 calc = sctp_sbspace_sub(calc, stcb->asoc.my_rwnd_control_len);




 if (calc < stcb->asoc.my_rwnd_control_len) {
  calc = 1;
 }
 return (calc);
}
