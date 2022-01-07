
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_iterator {int pcb_flags; int pcb_features; int iterator_flags; int done_current_ep; int (* function_inp ) (struct sctp_inpcb*,int ,int ) ;int (* function_inp_end ) (struct sctp_inpcb*,int ,int ) ;int asoc_state; scalar_t__ no_chunk_output; struct sctp_inpcb* inp; int val; int pointer; struct sctp_inpcb* stcb; int (* function_assoc ) (struct sctp_inpcb*,struct sctp_inpcb*,int ,int ) ;int (* function_atend ) (int ,int ) ;} ;
struct TYPE_3__ {int state; int refcnt; } ;
struct sctp_inpcb {int sctp_flags; int sctp_features; TYPE_1__ asoc; int sctp_asoc_list; } ;
struct TYPE_4__ {int iterator_flags; struct sctp_iterator* cur_it; } ;


 struct sctp_inpcb* LIST_FIRST (int *) ;
 void* LIST_NEXT (struct sctp_inpcb*,int ) ;
 int SCTP_FREE (struct sctp_iterator*,int ) ;
 int SCTP_INP_DECR_REF (struct sctp_inpcb*) ;
 int SCTP_INP_INCR_REF (struct sctp_inpcb*) ;
 int SCTP_INP_INFO_RLOCK () ;
 int SCTP_INP_INFO_RUNLOCK () ;
 int SCTP_INP_RLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_RUNLOCK (struct sctp_inpcb*) ;
 int SCTP_ITERATOR_DO_SINGLE_INP ;
 int SCTP_ITERATOR_LOCK () ;
 int SCTP_ITERATOR_MAX_AT_ONCE ;
 int SCTP_ITERATOR_STOP_CUR_INP ;
 int SCTP_ITERATOR_STOP_CUR_IT ;
 int SCTP_ITERATOR_UNLOCK () ;
 int SCTP_M_ITER ;
 int SCTP_OUTPUT_FROM_T3 ;
 int SCTP_PRINTF (char*,int) ;
 int SCTP_SO_NOT_LOCKED ;
 int SCTP_TCB_LOCK (struct sctp_inpcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_inpcb*) ;
 int atomic_add_int (int *,int) ;
 int sctp_chunk_output (struct sctp_inpcb*,struct sctp_inpcb*,int ,int ) ;
 TYPE_2__ sctp_it_ctl ;
 int sctp_list ;
 int sctp_tcblist ;
 int stub1 (int ,int ) ;
 int stub2 (struct sctp_inpcb*,int ,int ) ;
 int stub3 (struct sctp_inpcb*,int ,int ) ;
 int stub4 (struct sctp_inpcb*,struct sctp_inpcb*,int ,int ) ;
 int stub5 (struct sctp_inpcb*,int ,int ) ;

__attribute__((used)) static void
sctp_iterator_work(struct sctp_iterator *it)
{
 int iteration_count = 0;
 int inp_skip = 0;
 int first_in = 1;
 struct sctp_inpcb *tinp;

 SCTP_INP_INFO_RLOCK();
 SCTP_ITERATOR_LOCK();
 sctp_it_ctl.cur_it = it;
 if (it->inp) {
  SCTP_INP_RLOCK(it->inp);
  SCTP_INP_DECR_REF(it->inp);
 }
 if (it->inp == ((void*)0)) {

done_with_iterator:
  sctp_it_ctl.cur_it = ((void*)0);
  SCTP_ITERATOR_UNLOCK();
  SCTP_INP_INFO_RUNLOCK();
  if (it->function_atend != ((void*)0)) {
   (*it->function_atend) (it->pointer, it->val);
  }
  SCTP_FREE(it, SCTP_M_ITER);
  return;
 }
select_a_new_ep:
 if (first_in) {
  first_in = 0;
 } else {
  SCTP_INP_RLOCK(it->inp);
 }
 while (((it->pcb_flags) &&
     ((it->inp->sctp_flags & it->pcb_flags) != it->pcb_flags)) ||
     ((it->pcb_features) &&
     ((it->inp->sctp_features & it->pcb_features) != it->pcb_features))) {

  if (it->iterator_flags & SCTP_ITERATOR_DO_SINGLE_INP) {
   SCTP_INP_RUNLOCK(it->inp);
   goto done_with_iterator;
  }
  tinp = it->inp;
  it->inp = LIST_NEXT(it->inp, sctp_list);
  SCTP_INP_RUNLOCK(tinp);
  if (it->inp == ((void*)0)) {
   goto done_with_iterator;
  }
  SCTP_INP_RLOCK(it->inp);
 }

 if (it->done_current_ep == 0) {
  if (it->function_inp != ((void*)0))
   inp_skip = (*it->function_inp) (it->inp, it->pointer, it->val);
  it->done_current_ep = 1;
 }
 if (it->stcb == ((void*)0)) {

  it->stcb = LIST_FIRST(&it->inp->sctp_asoc_list);
 }
 if ((inp_skip) || it->stcb == ((void*)0)) {
  if (it->function_inp_end != ((void*)0)) {
   inp_skip = (*it->function_inp_end) (it->inp,
       it->pointer,
       it->val);
  }
  SCTP_INP_RUNLOCK(it->inp);
  goto no_stcb;
 }
 while (it->stcb) {
  SCTP_TCB_LOCK(it->stcb);
  if (it->asoc_state && ((it->stcb->asoc.state & it->asoc_state) != it->asoc_state)) {

   SCTP_TCB_UNLOCK(it->stcb);
   goto next_assoc;
  }

  iteration_count++;
  if (iteration_count > SCTP_ITERATOR_MAX_AT_ONCE) {

   atomic_add_int(&it->stcb->asoc.refcnt, 1);
   SCTP_TCB_UNLOCK(it->stcb);
   SCTP_INP_INCR_REF(it->inp);
   SCTP_INP_RUNLOCK(it->inp);
   SCTP_ITERATOR_UNLOCK();
   SCTP_INP_INFO_RUNLOCK();
   SCTP_INP_INFO_RLOCK();
   SCTP_ITERATOR_LOCK();
   if (sctp_it_ctl.iterator_flags) {

    SCTP_INP_DECR_REF(it->inp);
    atomic_add_int(&it->stcb->asoc.refcnt, -1);
    if (sctp_it_ctl.iterator_flags &
        SCTP_ITERATOR_STOP_CUR_IT) {
     sctp_it_ctl.iterator_flags &= ~SCTP_ITERATOR_STOP_CUR_IT;
     goto done_with_iterator;
    }
    if (sctp_it_ctl.iterator_flags &
        SCTP_ITERATOR_STOP_CUR_INP) {
     sctp_it_ctl.iterator_flags &= ~SCTP_ITERATOR_STOP_CUR_INP;
     goto no_stcb;
    }

    SCTP_PRINTF("Unknown it ctl flag %x\n",
        sctp_it_ctl.iterator_flags);
    sctp_it_ctl.iterator_flags = 0;
   }
   SCTP_INP_RLOCK(it->inp);
   SCTP_INP_DECR_REF(it->inp);
   SCTP_TCB_LOCK(it->stcb);
   atomic_add_int(&it->stcb->asoc.refcnt, -1);
   iteration_count = 0;
  }


  (*it->function_assoc) (it->inp, it->stcb, it->pointer, it->val);





  if (it->no_chunk_output == 0)
   sctp_chunk_output(it->inp, it->stcb, SCTP_OUTPUT_FROM_T3, SCTP_SO_NOT_LOCKED);

  SCTP_TCB_UNLOCK(it->stcb);
next_assoc:
  it->stcb = LIST_NEXT(it->stcb, sctp_tcblist);
  if (it->stcb == ((void*)0)) {

   if (it->function_inp_end != ((void*)0)) {
    inp_skip = (*it->function_inp_end) (it->inp,
        it->pointer,
        it->val);
   }
  }
 }
 SCTP_INP_RUNLOCK(it->inp);
no_stcb:

 it->done_current_ep = 0;
 if (it->iterator_flags & SCTP_ITERATOR_DO_SINGLE_INP) {
  it->inp = ((void*)0);
 } else {
  it->inp = LIST_NEXT(it->inp, sctp_list);
 }
 if (it->inp == ((void*)0)) {
  goto done_with_iterator;
 }
 goto select_a_new_ep;
}
