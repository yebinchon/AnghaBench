
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
struct pfi_kif {int dummy; } ;
struct pf_ruleset {int dummy; } ;
struct TYPE_12__ {scalar_t__ port_op; int neg; int addr; } ;
struct TYPE_11__ {scalar_t__ port_op; int neg; int addr; } ;
struct pf_rule {scalar_t__ ifnot; int direction; scalar_t__ af; scalar_t__ proto; scalar_t__ tos; scalar_t__ os_fingerprint; int prob; scalar_t__ action; scalar_t__ log; scalar_t__ quick; int * anchor; scalar_t__ match_tag; scalar_t__ prio; scalar_t__ code; scalar_t__ type; scalar_t__ flagset; TYPE_5__ dst; TYPE_4__ src; TYPE_3__* skip; int kif; int evaluations; } ;
struct pf_pdesc {scalar_t__ af; scalar_t__ proto; scalar_t__ tos; TYPE_6__* pf_mtag; int dst; int src; } ;
struct pf_anchor_stackframe {int dummy; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ sa_family_t ;
struct TYPE_14__ {TYPE_2__* rules; } ;
struct TYPE_13__ {int tag; } ;
struct TYPE_10__ {struct pf_rule* ptr; } ;
struct TYPE_8__ {int ptr; } ;
struct TYPE_9__ {TYPE_1__ active; } ;


 scalar_t__ IPPROTO_ICMP ;
 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int M_GETFIB (struct mbuf*) ;
 int PFLOG_PACKET (struct pfi_kif*,struct mbuf*,scalar_t__,int,int ,struct pf_rule*,struct pf_rule*,struct pf_ruleset*,struct pf_pdesc*,int) ;
 int PFRES_MATCH ;
 int PFRES_MEMORY ;
 int PF_ANCHOR_STACKSIZE ;
 int PF_DROP ;
 scalar_t__ PF_MISMATCHAW (int *,int ,scalar_t__,int ,struct pfi_kif*,int ) ;
 scalar_t__ PF_OSFP_ANY ;
 scalar_t__ PF_PASS ;
 size_t PF_RULESET_FILTER ;
 int PF_RULES_RASSERT () ;
 size_t PF_SKIP_AF ;
 size_t PF_SKIP_DIR ;
 size_t PF_SKIP_DST_ADDR ;
 size_t PF_SKIP_IFP ;
 size_t PF_SKIP_PROTO ;
 size_t PF_SKIP_SRC_ADDR ;
 int REASON_SET (int *,int ) ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_rule* TAILQ_NEXT (struct pf_rule*,int ) ;
 int UINT_MAX ;
 int arc4random () ;
 int entries ;
 TYPE_7__ pf_main_ruleset ;
 int pf_match_ieee8021q_pcp (scalar_t__,struct mbuf*) ;
 int pf_match_tag (struct mbuf*,struct pf_rule*,int*,int ) ;
 int pf_step_into_anchor (struct pf_anchor_stackframe*,int*,struct pf_ruleset**,size_t,struct pf_rule**,struct pf_rule**,int*) ;
 scalar_t__ pf_step_out_of_anchor (struct pf_anchor_stackframe*,int*,struct pf_ruleset**,size_t,struct pf_rule**,struct pf_rule**,int*) ;
 scalar_t__ pf_tag_packet (struct mbuf*,struct pf_pdesc*,int) ;
 scalar_t__ pfi_kif_match (int ,struct pfi_kif*) ;

__attribute__((used)) static int
pf_test_fragment(struct pf_rule **rm, int direction, struct pfi_kif *kif,
    struct mbuf *m, void *h, struct pf_pdesc *pd, struct pf_rule **am,
    struct pf_ruleset **rsm)
{
 struct pf_rule *r, *a = ((void*)0);
 struct pf_ruleset *ruleset = ((void*)0);
 sa_family_t af = pd->af;
 u_short reason;
 int tag = -1;
 int asd = 0;
 int match = 0;
 struct pf_anchor_stackframe anchor_stack[PF_ANCHOR_STACKSIZE];

 PF_RULES_RASSERT();

 r = TAILQ_FIRST(pf_main_ruleset.rules[PF_RULESET_FILTER].active.ptr);
 while (r != ((void*)0)) {
  r->evaluations++;
  if (pfi_kif_match(r->kif, kif) == r->ifnot)
   r = r->skip[PF_SKIP_IFP].ptr;
  else if (r->direction && r->direction != direction)
   r = r->skip[PF_SKIP_DIR].ptr;
  else if (r->af && r->af != af)
   r = r->skip[PF_SKIP_AF].ptr;
  else if (r->proto && r->proto != pd->proto)
   r = r->skip[PF_SKIP_PROTO].ptr;
  else if (PF_MISMATCHAW(&r->src.addr, pd->src, af,
      r->src.neg, kif, M_GETFIB(m)))
   r = r->skip[PF_SKIP_SRC_ADDR].ptr;
  else if (PF_MISMATCHAW(&r->dst.addr, pd->dst, af,
      r->dst.neg, ((void*)0), M_GETFIB(m)))
   r = r->skip[PF_SKIP_DST_ADDR].ptr;
  else if (r->tos && !(r->tos == pd->tos))
   r = TAILQ_NEXT(r, entries);
  else if (r->os_fingerprint != PF_OSFP_ANY)
   r = TAILQ_NEXT(r, entries);
  else if (pd->proto == IPPROTO_UDP &&
      (r->src.port_op || r->dst.port_op))
   r = TAILQ_NEXT(r, entries);
  else if (pd->proto == IPPROTO_TCP &&
      (r->src.port_op || r->dst.port_op || r->flagset))
   r = TAILQ_NEXT(r, entries);
  else if ((pd->proto == IPPROTO_ICMP ||
      pd->proto == IPPROTO_ICMPV6) &&
      (r->type || r->code))
   r = TAILQ_NEXT(r, entries);
  else if (r->prio &&
      !pf_match_ieee8021q_pcp(r->prio, m))
   r = TAILQ_NEXT(r, entries);
  else if (r->prob && r->prob <=
      (arc4random() % (UINT_MAX - 1) + 1))
   r = TAILQ_NEXT(r, entries);
  else if (r->match_tag && !pf_match_tag(m, r, &tag,
      pd->pf_mtag ? pd->pf_mtag->tag : 0))
   r = TAILQ_NEXT(r, entries);
  else {
   if (r->anchor == ((void*)0)) {
    match = 1;
    *rm = r;
    *am = a;
    *rsm = ruleset;
    if ((*rm)->quick)
     break;
    r = TAILQ_NEXT(r, entries);
   } else
    pf_step_into_anchor(anchor_stack, &asd,
        &ruleset, PF_RULESET_FILTER, &r, &a,
        &match);
  }
  if (r == ((void*)0) && pf_step_out_of_anchor(anchor_stack, &asd,
      &ruleset, PF_RULESET_FILTER, &r, &a, &match))
   break;
 }
 r = *rm;
 a = *am;
 ruleset = *rsm;

 REASON_SET(&reason, PFRES_MATCH);

 if (r->log)
  PFLOG_PACKET(kif, m, af, direction, reason, r, a, ruleset, pd,
      1);

 if (r->action != PF_PASS)
  return (PF_DROP);

 if (tag > 0 && pf_tag_packet(m, pd, tag)) {
  REASON_SET(&reason, PFRES_MEMORY);
  return (PF_DROP);
 }

 return (PF_PASS);
}
