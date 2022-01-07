
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int t_flags; int t_segqlen; scalar_t__ snd_una; scalar_t__ snd_max; int t_rxtcur; int t_srtt; int t_maxseg; int t_state; int rcv_scale; int snd_scale; int snd_ssthresh; int rcv_wnd; int snd_wnd; int snd_cwnd; } ;
struct pkt_node {int sack_enabled; int flags; int ipver; int tval; int direction; int flowtype; int flowid; int t_segqlen; scalar_t__ sent_inflight_bytes; void* rcv_buf_cc; int rcv_buf_hiwater; void* snd_buf_cc; int snd_buf_hiwater; int rxt_length; int smoothed_rtt; int max_seg_size; int conn_state; int rcv_scale; int snd_scale; int snd_ssthresh; scalar_t__ snd_bwnd; int rcv_wnd; int snd_wnd; int snd_cwnd; int tcp_foreignport; int tcp_localport; int * ip_faddr; int * ip_laddr; } ;
struct TYPE_10__ {int * s6_addr32; } ;
struct TYPE_9__ {int * s6_addr32; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_7__ {int s_addr; } ;
struct inpcb {int inp_flowtype; int inp_flowid; TYPE_5__* inp_socket; int inp_fport; int inp_lport; TYPE_4__ in6p_faddr; TYPE_3__ in6p_laddr; TYPE_2__ inp_faddr; TYPE_1__ inp_laddr; } ;
struct TYPE_12__ {int sb_hiwat; } ;
struct TYPE_11__ {TYPE_6__ so_rcv; TYPE_6__ so_snd; } ;


 int DIR_IN ;
 int DIR_OUT ;
 int INP_IPV4 ;
 int INP_RUNLOCK (struct inpcb*) ;
 int PFIL_IN ;
 int TCP_PROBE1 (int ,struct pkt_node**) ;
 int TF_SACK_PERMIT ;
 int microtime (int *) ;
 void* sbused (TYPE_6__*) ;
 int siftr ;

__attribute__((used)) static inline void
siftr_siftdata(struct pkt_node *pn, struct inpcb *inp, struct tcpcb *tp,
    int ipver, int dir, int inp_locally_locked)
{





  *((uint32_t *)pn->ip_laddr) = inp->inp_laddr.s_addr;
  *((uint32_t *)pn->ip_faddr) = inp->inp_faddr.s_addr;
 pn->tcp_localport = inp->inp_lport;
 pn->tcp_foreignport = inp->inp_fport;
 pn->snd_cwnd = tp->snd_cwnd;
 pn->snd_wnd = tp->snd_wnd;
 pn->rcv_wnd = tp->rcv_wnd;
 pn->snd_bwnd = 0;
 pn->snd_ssthresh = tp->snd_ssthresh;
 pn->snd_scale = tp->snd_scale;
 pn->rcv_scale = tp->rcv_scale;
 pn->conn_state = tp->t_state;
 pn->max_seg_size = tp->t_maxseg;
 pn->smoothed_rtt = tp->t_srtt;
 pn->sack_enabled = (tp->t_flags & TF_SACK_PERMIT) != 0;
 pn->flags = tp->t_flags;
 pn->rxt_length = tp->t_rxtcur;
 pn->snd_buf_hiwater = inp->inp_socket->so_snd.sb_hiwat;
 pn->snd_buf_cc = sbused(&inp->inp_socket->so_snd);
 pn->rcv_buf_hiwater = inp->inp_socket->so_rcv.sb_hiwat;
 pn->rcv_buf_cc = sbused(&inp->inp_socket->so_rcv);
 pn->sent_inflight_bytes = tp->snd_max - tp->snd_una;
 pn->t_segqlen = tp->t_segqlen;
 pn->flowid = inp->inp_flowid;
 pn->flowtype = inp->inp_flowtype;


 if (inp_locally_locked)
  INP_RUNLOCK(inp);

 pn->ipver = ipver;
 pn->direction = (dir == PFIL_IN ? DIR_IN : DIR_OUT);






 microtime(&pn->tval);
 TCP_PROBE1(siftr, &pn);

}
