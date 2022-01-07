
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_19__ ;
typedef struct TYPE_29__ TYPE_18__ ;
typedef struct TYPE_28__ TYPE_17__ ;
typedef struct TYPE_27__ TYPE_16__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_14__ ;
typedef struct TYPE_24__ TYPE_13__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_36__ {unsigned int* neg; } ;
struct TYPE_37__ {TYPE_6__ cfg; } ;
struct link {TYPE_7__ ccp; } ;
struct datalink {TYPE_18__* physical; int name; } ;
struct cmdargs {int argn; TYPE_19__* bundle; TYPE_14__* cmd; int * argv; struct datalink* cx; } ;
struct TYPE_38__ {unsigned int negenddisc; unsigned int shortseq; } ;
struct TYPE_39__ {TYPE_8__ cfg; } ;
struct TYPE_33__ {int load; int (* func ) (TYPE_17__*) ;} ;
struct TYPE_34__ {int method; TYPE_3__ timer; } ;
struct TYPE_35__ {TYPE_4__ lqm; } ;
struct TYPE_32__ {int state; } ;
struct TYPE_31__ {unsigned int dns_neg; } ;
struct TYPE_21__ {unsigned int neg; } ;
struct TYPE_22__ {TYPE_10__ vj; TYPE_1__ ns; } ;
struct TYPE_23__ {TYPE_11__ cfg; } ;
struct TYPE_24__ {TYPE_12__ ipcp; TYPE_9__ mp; } ;
struct TYPE_30__ {TYPE_13__ ncp; } ;
struct TYPE_26__ {unsigned int acfcomp; unsigned int chap05; unsigned int chap80nt; unsigned int chap80lm; unsigned int chap81; int echo; int lqrperiod; unsigned int lqr; unsigned int pap; unsigned int protocomp; } ;
struct TYPE_28__ {TYPE_15__ cfg; TYPE_2__ fsm; int want_lqrperiod; } ;
struct TYPE_27__ {TYPE_17__ lcp; } ;
struct TYPE_29__ {TYPE_16__ link; TYPE_5__ hdlc; } ;
struct TYPE_25__ {int lauth; int name; scalar_t__ args; } ;


 size_t CCP_NEG_DEFLATE ;
 size_t CCP_NEG_DEFLATE24 ;
 size_t CCP_NEG_MPPE ;
 size_t CCP_NEG_PRED1 ;
 int DATALINK_LCP ;
 int LOCAL_CX ;
 int LOCAL_CX_OPT ;
 int LQM_ECHO ;
 int LogWARN ;
 int SECTICKS ;
 int ST_OPENED ;
 int bundle_HighestState (TYPE_19__*) ;
 int bundle_Phase (TYPE_19__*) ;
 struct link* command_ChooseLink (struct cmdargs const*) ;
 char* ident_cmd (int ,unsigned int*,unsigned int*) ;
 int log_Printf (int ,char*,...) ;
 int lqr_StopTimer (TYPE_18__*) ;
 int stub1 (TYPE_17__*) ;

__attribute__((used)) static int
NegotiateSet(struct cmdargs const *arg)
{
  long param = (long)arg->cmd->args;
  struct link *l = command_ChooseLink(arg);
  struct datalink *cx = arg->cx;
  const char *cmd;
  unsigned keep;
  unsigned add;

  if ((cmd = ident_cmd(arg->argv[arg->argn-2], &keep, &add)) == ((void*)0))
    return 1;

  if ((arg->cmd->lauth & LOCAL_CX) && !cx) {
    log_Printf(LogWARN, "%s %s: No context (use the `link' command)\n",
              cmd, arg->cmd->name);
    return 2;
  } else if (cx && !(arg->cmd->lauth & (LOCAL_CX|LOCAL_CX_OPT))) {
    log_Printf(LogWARN, "%s %s: Redundant context (%s) ignored\n",
              cmd, arg->cmd->name, cx->name);
    cx = ((void*)0);
  }

  switch (param) {
    case 146:
      cx->physical->link.lcp.cfg.acfcomp &= keep;
      cx->physical->link.lcp.cfg.acfcomp |= add;
      break;
    case 145:
      cx->physical->link.lcp.cfg.chap05 &= keep;
      cx->physical->link.lcp.cfg.chap05 |= add;
      break;

    case 144:
      cx->physical->link.lcp.cfg.chap80nt &= keep;
      cx->physical->link.lcp.cfg.chap80nt |= add;
      break;
    case 143:
      cx->physical->link.lcp.cfg.chap80lm &= keep;
      cx->physical->link.lcp.cfg.chap80lm |= add;
      break;
    case 142:
      cx->physical->link.lcp.cfg.chap81 &= keep;
      cx->physical->link.lcp.cfg.chap81 |= add;
      break;
    case 136:
      l->ccp.cfg.neg[CCP_NEG_MPPE] &= keep;
      l->ccp.cfg.neg[CCP_NEG_MPPE] |= add;
      break;

    case 141:
      l->ccp.cfg.neg[CCP_NEG_DEFLATE] &= keep;
      l->ccp.cfg.neg[CCP_NEG_DEFLATE] |= add;
      break;
    case 140:
      arg->bundle->ncp.ipcp.cfg.ns.dns_neg &= keep;
      arg->bundle->ncp.ipcp.cfg.ns.dns_neg |= add;
      break;
    case 139:
      if (cx->physical->link.lcp.cfg.echo && !add) {
        cx->physical->link.lcp.cfg.echo = 0;
        cx->physical->hdlc.lqm.method &= ~LQM_ECHO;
        if (cx->physical->hdlc.lqm.method & LQM_ECHO &&
            !cx->physical->link.lcp.want_lqrperiod &&
            cx->physical->hdlc.lqm.timer.load) {
          cx->physical->hdlc.lqm.timer.load = 0;
          lqr_StopTimer(cx->physical);
        }
      } else if (!cx->physical->link.lcp.cfg.echo && add) {
        cx->physical->link.lcp.cfg.echo = 1;
        cx->physical->hdlc.lqm.method |= LQM_ECHO;
        cx->physical->hdlc.lqm.timer.load =
     cx->physical->link.lcp.cfg.lqrperiod * SECTICKS;
        if (cx->physical->link.lcp.fsm.state == ST_OPENED)
          (*cx->physical->hdlc.lqm.timer.func)(&cx->physical->link.lcp);
      }
      break;
    case 138:
      arg->bundle->ncp.mp.cfg.negenddisc &= keep;
      arg->bundle->ncp.mp.cfg.negenddisc |= add;
      break;
    case 137:
      cx->physical->link.lcp.cfg.lqr &= keep;
      cx->physical->link.lcp.cfg.lqr |= add;
      break;
    case 135:
      cx->physical->link.lcp.cfg.pap &= keep;
      cx->physical->link.lcp.cfg.pap |= add;
      break;
    case 134:
      l->ccp.cfg.neg[CCP_NEG_DEFLATE24] &= keep;
      l->ccp.cfg.neg[CCP_NEG_DEFLATE24] |= add;
      break;
    case 133:
      l->ccp.cfg.neg[CCP_NEG_PRED1] &= keep;
      l->ccp.cfg.neg[CCP_NEG_PRED1] |= add;
      break;
    case 132:
      cx->physical->link.lcp.cfg.protocomp &= keep;
      cx->physical->link.lcp.cfg.protocomp |= add;
      break;
    case 131:
      switch (bundle_Phase(arg->bundle)) {
        case 129:
          break;
        case 128:

          if (bundle_HighestState(arg->bundle) >= DATALINK_LCP) {
            log_Printf(LogWARN, "shortseq: Only changeable before"
                       " LCP negotiations\n");
            return 1;
          }
          break;
        default:
          log_Printf(LogWARN, "shortseq: Only changeable at phase"
                     " DEAD/ESTABLISH\n");
          return 1;
      }
      arg->bundle->ncp.mp.cfg.shortseq &= keep;
      arg->bundle->ncp.mp.cfg.shortseq |= add;
      break;
    case 130:
      arg->bundle->ncp.ipcp.cfg.vj.neg &= keep;
      arg->bundle->ncp.ipcp.cfg.vj.neg |= add;
      break;
  }

  return 0;
}
