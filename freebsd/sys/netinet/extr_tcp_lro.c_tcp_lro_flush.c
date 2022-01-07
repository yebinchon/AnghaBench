
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcpcb {int dummy; } ;
struct lro_entry {int eh_type; int need_wakeup; scalar_t__ tcp_tot_p_len; scalar_t__ mbuf_cnt; TYPE_2__* m_last_mbuf; TYPE_2__* m_head; int dest_port; TYPE_1__* le_ip4; int source_port; int dest_ip6; int source_ip6; } ;
struct lro_ctrl {scalar_t__ lro_length_lim; scalar_t__ lro_ackcnt_lim; int lro_free; int lro_flushed; TYPE_3__* ifp; } ;
struct inpcb {int inp_flags; int inp_flags2; scalar_t__ inp_in_input; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_7__ {int if_vnet; } ;
struct TYPE_6__ {int m_flags; } ;
struct TYPE_5__ {int ip_dst; int ip_src; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;


 int INPLOOKUP_WLOCKPCB ;
 int INP_DONT_SACK_QUEUE ;
 int INP_DROPPED ;
 int INP_FREED ;
 int INP_MBUF_QUEUE_READY ;
 int INP_SUPPORTS_MBUFQ ;
 int INP_TIMEWAIT ;
 int INP_WUNLOCK (struct inpcb*) ;
 int LIST_INSERT_HEAD (int *,struct lro_entry*,int ) ;
 int M_VLANTAG ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int V_tcbinfo ;
 int bzero (struct lro_entry*,int) ;
 int counter_u64_add (int ,int) ;
 scalar_t__ hold_lock_over_compress ;
 struct inpcb* in6_pcblookup (int *,int *,int ,int *,int ,int ,TYPE_3__*) ;
 struct inpcb* in_pcblookup (int *,int ,int ,int ,int ,int ,TYPE_3__*) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int next ;
 int tcp_flush_out_le (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,int) ;
 int tcp_inp_lro_compressed ;
 int tcp_inp_lro_direct_queue ;
 int tcp_inp_lro_locks_taken ;
 int tcp_inp_lro_sack_wake ;
 int tcp_inp_lro_single_push ;
 int tcp_inp_lro_wokeup_queue ;
 int tcp_lro_condense (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,int) ;
 int tcp_lro_log (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,int *,int,int,int,scalar_t__,int) ;
 int tcp_queue_pkts (struct tcpcb*,struct lro_entry*) ;
 int tcp_queue_to_input (struct inpcb*) ;
 scalar_t__ tcplro_stacks_wanting_mbufq ;

void
tcp_lro_flush(struct lro_ctrl *lc, struct lro_entry *le)
{
 struct tcpcb *tp = ((void*)0);
 int locked = 0;
  if (le->m_head != le->m_last_mbuf) {
   counter_u64_add(tcp_inp_lro_compressed, 1);
   tcp_lro_condense(tp, lc, le, locked);
  } else
   counter_u64_add(tcp_inp_lro_single_push, 1);
  tcp_flush_out_le(tp, lc, le, locked);
 lc->lro_flushed++;
 bzero(le, sizeof(*le));
 LIST_INSERT_HEAD(&lc->lro_free, le, next);
}
