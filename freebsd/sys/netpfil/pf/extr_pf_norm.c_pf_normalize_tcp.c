
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int8_t ;
typedef scalar_t__ u_int16_t ;
struct tcphdr {int th_flags; int th_off; scalar_t__ th_x2; scalar_t__ th_urp; void* th_sum; int th_ack; int th_dport; int th_sport; } ;
struct pfi_kif {int dummy; } ;
struct TYPE_12__ {int * port; scalar_t__ port_op; int neg; int addr; } ;
struct TYPE_11__ {int * port; scalar_t__ port_op; int neg; int addr; } ;
struct pf_rule {scalar_t__ ifnot; int direction; scalar_t__ af; scalar_t__ proto; scalar_t__ os_fingerprint; scalar_t__ action; int rule_flag; scalar_t__ log; scalar_t__ max_mss; int * bytes; int * packets; TYPE_6__* skip; TYPE_5__ dst; TYPE_4__ src; int kif; int evaluations; } ;
struct TYPE_8__ {struct tcphdr* tcp; } ;
struct pf_pdesc {scalar_t__ af; scalar_t__ proto; int flags; scalar_t__ tot_len; int dst; int src; TYPE_1__ hdr; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ sa_family_t ;
typedef int caddr_t ;
struct TYPE_14__ {TYPE_3__* rules; } ;
struct TYPE_13__ {struct pf_rule* ptr; } ;
struct TYPE_9__ {int ptr; } ;
struct TYPE_10__ {TYPE_2__ active; } ;


 int AF_INET ;
 int M_GETFIB (struct mbuf*) ;
 int PFDESC_TCP_NORM ;
 int PFLOG_PACKET (struct pfi_kif*,struct mbuf*,int ,int,int ,struct pf_rule*,int *,int *,struct pf_pdesc*,int) ;
 int PFRES_NORM ;
 int PFRULE_REASSEMBLE_TCP ;
 int PF_DROP ;
 scalar_t__ PF_MISMATCHAW (int *,int ,scalar_t__,int ,struct pfi_kif*,int ) ;
 scalar_t__ PF_NOSCRUB ;
 scalar_t__ PF_OSFP_ANY ;
 int PF_OUT ;
 int PF_PASS ;
 size_t PF_RULESET_SCRUB ;
 int PF_RULES_RASSERT () ;
 size_t PF_SKIP_AF ;
 size_t PF_SKIP_DIR ;
 size_t PF_SKIP_DST_ADDR ;
 size_t PF_SKIP_DST_PORT ;
 size_t PF_SKIP_IFP ;
 size_t PF_SKIP_PROTO ;
 size_t PF_SKIP_SRC_ADDR ;
 size_t PF_SKIP_SRC_PORT ;
 int REASON_SET (int *,int ) ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_rule* TAILQ_NEXT (struct pf_rule*,int ) ;
 int TH_ACK ;
 int TH_FIN ;
 int TH_PUSH ;
 int TH_RST ;
 int TH_SYN ;
 int TH_URG ;
 int entries ;
 int m_copyback (struct mbuf*,int,int,int ) ;
 TYPE_7__ pf_main_ruleset ;
 int pf_match_port (scalar_t__,int ,int ,int ) ;
 scalar_t__ pf_normalize_tcpopt (struct pf_rule*,struct mbuf*,struct tcphdr*,int,scalar_t__) ;
 int pf_osfp_fingerprint (struct pf_pdesc*,struct mbuf*,int,struct tcphdr*) ;
 int pf_osfp_match (int ,scalar_t__) ;
 void* pf_proto_cksum_fixup (struct mbuf*,void*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ pfi_kif_match (int ,struct pfi_kif*) ;

int
pf_normalize_tcp(int dir, struct pfi_kif *kif, struct mbuf *m, int ipoff,
    int off, void *h, struct pf_pdesc *pd)
{
 struct pf_rule *r, *rm = ((void*)0);
 struct tcphdr *th = pd->hdr.tcp;
 int rewrite = 0;
 u_short reason;
 u_int8_t flags;
 sa_family_t af = pd->af;

 PF_RULES_RASSERT();

 r = TAILQ_FIRST(pf_main_ruleset.rules[PF_RULESET_SCRUB].active.ptr);
 while (r != ((void*)0)) {
  r->evaluations++;
  if (pfi_kif_match(r->kif, kif) == r->ifnot)
   r = r->skip[PF_SKIP_IFP].ptr;
  else if (r->direction && r->direction != dir)
   r = r->skip[PF_SKIP_DIR].ptr;
  else if (r->af && r->af != af)
   r = r->skip[PF_SKIP_AF].ptr;
  else if (r->proto && r->proto != pd->proto)
   r = r->skip[PF_SKIP_PROTO].ptr;
  else if (PF_MISMATCHAW(&r->src.addr, pd->src, af,
      r->src.neg, kif, M_GETFIB(m)))
   r = r->skip[PF_SKIP_SRC_ADDR].ptr;
  else if (r->src.port_op && !pf_match_port(r->src.port_op,
       r->src.port[0], r->src.port[1], th->th_sport))
   r = r->skip[PF_SKIP_SRC_PORT].ptr;
  else if (PF_MISMATCHAW(&r->dst.addr, pd->dst, af,
      r->dst.neg, ((void*)0), M_GETFIB(m)))
   r = r->skip[PF_SKIP_DST_ADDR].ptr;
  else if (r->dst.port_op && !pf_match_port(r->dst.port_op,
       r->dst.port[0], r->dst.port[1], th->th_dport))
   r = r->skip[PF_SKIP_DST_PORT].ptr;
  else if (r->os_fingerprint != PF_OSFP_ANY && !pf_osfp_match(
       pf_osfp_fingerprint(pd, m, off, th),
       r->os_fingerprint))
   r = TAILQ_NEXT(r, entries);
  else {
   rm = r;
   break;
  }
 }

 if (rm == ((void*)0) || rm->action == PF_NOSCRUB)
  return (PF_PASS);
 else {
  r->packets[dir == PF_OUT]++;
  r->bytes[dir == PF_OUT] += pd->tot_len;
 }

 if (rm->rule_flag & PFRULE_REASSEMBLE_TCP)
  pd->flags |= PFDESC_TCP_NORM;

 flags = th->th_flags;
 if (flags & TH_SYN) {

  if (flags & TH_RST)
   goto tcp_drop;

  if (flags & TH_FIN)
   goto tcp_drop;
 } else {

  if (!(flags & (TH_ACK|TH_RST)))
   goto tcp_drop;
 }

 if (!(flags & TH_ACK)) {

  if ((flags & TH_FIN) || (flags & TH_PUSH) || (flags & TH_URG))
   goto tcp_drop;
 }


 if (th->th_off < (sizeof(struct tcphdr) >> 2))
  goto tcp_drop;


 if (flags != th->th_flags || th->th_x2 != 0) {
  u_int16_t ov, nv;

  ov = *(u_int16_t *)(&th->th_ack + 1);
  th->th_flags = flags;
  th->th_x2 = 0;
  nv = *(u_int16_t *)(&th->th_ack + 1);

  th->th_sum = pf_proto_cksum_fixup(m, th->th_sum, ov, nv, 0);
  rewrite = 1;
 }


 if (!(flags & TH_URG) && th->th_urp) {
  th->th_sum = pf_proto_cksum_fixup(m, th->th_sum, th->th_urp,
      0, 0);
  th->th_urp = 0;
  rewrite = 1;
 }


 if (r->max_mss && pf_normalize_tcpopt(r, m, th, off, pd->af))
  rewrite = 1;


 if (rewrite)
  m_copyback(m, off, sizeof(*th), (caddr_t)th);

 return (PF_PASS);

 tcp_drop:
 REASON_SET(&reason, PFRES_NORM);
 if (rm != ((void*)0) && r->log)
  PFLOG_PACKET(kif, m, AF_INET, dir, reason, r, ((void*)0), ((void*)0), pd,
      1);
 return (PF_DROP);
}
