
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ can_take_data; int id; } ;
struct TYPE_5__ {TYPE_1__ chunk_id; } ;
struct sctp_tmit_chunk {int send_size; TYPE_3__* asoc; struct sctp_nets* whoTo; scalar_t__ snd_count; int sent; struct mbuf* data; int flags; TYPE_2__ rec; scalar_t__ copy_by_ref; } ;
struct TYPE_6__ {int ctrl_queue_cnt; int asconf_send_queue; } ;
struct sctp_tcb {TYPE_3__ asoc; int sctp_ep; } ;
struct sctp_nets {int ref_count; } ;
struct mbuf {int dummy; } ;


 int CHUNK_FLAGS_FRAGMENT_OK ;
 int SCTP_ASCONF ;
 int SCTP_DATAGRAM_UNSENT ;
 int SCTP_PCB_FLAGS_MULTIPLE_ASCONFS ;
 int SCTP_TCB_LOCK_ASSERT (struct sctp_tcb*) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct sctp_tmit_chunk*,int ) ;
 int atomic_add_int (int *,int) ;
 int sctp_alloc_a_chunk (struct sctp_tcb*,struct sctp_tmit_chunk*) ;
 struct mbuf* sctp_compose_asconf (struct sctp_tcb*,int*,int) ;
 int sctp_is_feature_on (int ,int ) ;
 int sctp_m_freem (struct mbuf*) ;
 int sctp_next ;

void
sctp_send_asconf(struct sctp_tcb *stcb, struct sctp_nets *net, int addr_locked)
{




 struct sctp_tmit_chunk *chk;
 struct mbuf *m_asconf;
 int len;

 SCTP_TCB_LOCK_ASSERT(stcb);

 if ((!TAILQ_EMPTY(&stcb->asoc.asconf_send_queue)) &&
     (!sctp_is_feature_on(stcb->sctp_ep, SCTP_PCB_FLAGS_MULTIPLE_ASCONFS))) {

  return;
 }


 m_asconf = sctp_compose_asconf(stcb, &len, addr_locked);
 if (m_asconf == ((void*)0)) {
  return;
 }

 sctp_alloc_a_chunk(stcb, chk);
 if (chk == ((void*)0)) {

  sctp_m_freem(m_asconf);
  return;
 }

 chk->copy_by_ref = 0;
 chk->rec.chunk_id.id = SCTP_ASCONF;
 chk->rec.chunk_id.can_take_data = 0;
 chk->flags = CHUNK_FLAGS_FRAGMENT_OK;
 chk->data = m_asconf;
 chk->send_size = len;
 chk->sent = SCTP_DATAGRAM_UNSENT;
 chk->snd_count = 0;
 chk->asoc = &stcb->asoc;
 chk->whoTo = net;
 if (chk->whoTo) {
  atomic_add_int(&chk->whoTo->ref_count, 1);
 }
 TAILQ_INSERT_TAIL(&chk->asoc->asconf_send_queue, chk, sctp_next);
 chk->asoc->ctrl_queue_cnt++;
 return;
}
