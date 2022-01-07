
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sctp_queued_to_read {scalar_t__ on_read_q; int fsn_included; } ;
struct sctp_inpcb {int read_queue; } ;


 int TAILQ_REMOVE (int *,struct sctp_queued_to_read*,int ) ;
 int next ;

__attribute__((used)) static void
sctp_reset_a_control(struct sctp_queued_to_read *control,
    struct sctp_inpcb *inp, uint32_t tsn)
{
 control->fsn_included = tsn;
 if (control->on_read_q) {




  TAILQ_REMOVE(&inp->read_queue, control, next);
  control->on_read_q = 0;
 }
}
