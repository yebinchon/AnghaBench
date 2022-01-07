
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u_char ;
struct TYPE_15__ {int id; int len; } ;
struct fsm_opt {TYPE_4__ hdr; } ;
struct fsm_decode {scalar_t__ rejend; scalar_t__ rej; scalar_t__ nakend; scalar_t__ nak; } ;
struct fsm {TYPE_6__* link; int bundle; } ;
struct ccp_opt {struct fsm_opt val; struct ccp_opt* next; } ;
struct TYPE_18__ {int algorithm; int * state; struct fsm_opt opt; } ;
struct TYPE_19__ {int * neg; } ;
struct TYPE_13__ {struct ccp_opt* opt; } ;
struct ccp {int my_reject; int his_proto; int my_proto; int his_reject; TYPE_7__ in; TYPE_8__ cfg; TYPE_2__ out; } ;
struct TYPE_16__ {int fsm; } ;
struct TYPE_17__ {TYPE_5__ lcp; int name; } ;
struct TYPE_14__ {int const (* Set ) (int ,struct fsm_opt*,TYPE_8__*) ;} ;
struct TYPE_12__ {int (* Set ) (int ,struct fsm_opt*,TYPE_8__*) ;} ;
struct TYPE_11__ {int id; char* (* Disp ) (struct fsm_opt*) ;size_t Neg; int (* Required ) (struct fsm*) ;TYPE_3__ o; TYPE_1__ i; int (* Usable ) (struct fsm*) ;} ;


 int IsAccepted (int ) ;
 int LogCCP ;
 int LogWARN ;


 int MODE_NOP ;


 int NALGORITHMS ;
 TYPE_10__** algorithm ;
 struct ccp* fsm2ccp (struct fsm*) ;
 int fsm_Close (int *) ;
 int fsm_ack (struct fsm_decode*,struct fsm_opt*) ;
 int fsm_nak (struct fsm_decode*,struct fsm_opt*) ;
 int fsm_opt_normalise (struct fsm_decode*) ;
 struct fsm_opt* fsm_readopt (int **) ;
 int fsm_rej (struct fsm_decode*,struct fsm_opt*) ;
 int log_Printf (int ,char*,int ,...) ;
 int memcpy (struct fsm_opt*,struct fsm_opt*,int ) ;
 int protoname (int) ;
 char* stub1 (struct fsm_opt*) ;
 int stub2 (struct fsm*) ;
 int stub3 (int ,struct fsm_opt*,TYPE_8__*) ;
 int const stub4 (int ,struct fsm_opt*,TYPE_8__*) ;
 int stub5 (struct fsm*) ;
 int stub6 (struct fsm*) ;

__attribute__((used)) static void
CcpDecodeConfig(struct fsm *fp, u_char *cp, u_char *end, int mode_type,
                struct fsm_decode *dec)
{

  struct ccp *ccp = fsm2ccp(fp);
  int f;
  const char *disp;
  struct fsm_opt *opt;

  if (mode_type == 128)
    ccp->in.algorithm = -1;

  while (end >= cp + sizeof(opt->hdr)) {
    if ((opt = fsm_readopt(&cp)) == ((void*)0))
      break;

    for (f = NALGORITHMS-1; f > -1; f--)
      if (algorithm[f]->id == opt->hdr.id)
        break;

    disp = f == -1 ? "" : (*algorithm[f]->Disp)(opt);
    if (disp == ((void*)0))
      disp = "";

    log_Printf(LogCCP, " %s[%d] %s\n", protoname(opt->hdr.id),
               opt->hdr.len, disp);

    if (f == -1) {

      if (mode_type == 128) {
        ccp->my_reject |= (1 << opt->hdr.id);
        fsm_rej(dec, opt);
      }
    } else {
      struct ccp_opt *o;

      switch (mode_type) {
      case 128:
        if (IsAccepted(ccp->cfg.neg[algorithm[f]->Neg]) &&
            (*algorithm[f]->Usable)(fp) &&
            ccp->in.algorithm == -1) {
          memcpy(&ccp->in.opt, opt, opt->hdr.len);
          switch ((*algorithm[f]->i.Set)(fp->bundle, &ccp->in.opt, &ccp->cfg)) {
          case 129:
            fsm_rej(dec, &ccp->in.opt);
            break;
          case 130:
            fsm_nak(dec, &ccp->in.opt);
            break;
          case 131:
            fsm_ack(dec, &ccp->in.opt);
            ccp->his_proto = opt->hdr.id;
            ccp->in.algorithm = (int)f;
            break;
          }
        } else {
          fsm_rej(dec, opt);
        }
        break;
      case 130:
        for (o = ccp->out.opt; o != ((void*)0); o = o->next)
          if (o->val.hdr.id == opt->hdr.id)
            break;
        if (o == ((void*)0))
          log_Printf(LogCCP, "%s: Warning: Ignoring peer NAK of unsent"
                     " option\n", fp->link->name);
        else {
          memcpy(&o->val, opt, opt->hdr.len);
          if ((*algorithm[f]->o.Set)(fp->bundle, &o->val, &ccp->cfg) ==
              131)
            ccp->my_proto = algorithm[f]->id;
          else {
            ccp->his_reject |= (1 << opt->hdr.id);
            ccp->my_proto = -1;
            if (algorithm[f]->Required(fp)) {
              log_Printf(LogWARN, "%s: Cannot understand peers (required)"
                         " %s negotiation\n", fp->link->name,
                         protoname(algorithm[f]->id));
              fsm_Close(&fp->link->lcp.fsm);
            }
          }
        }
        break;
      case 129:
        ccp->his_reject |= (1 << opt->hdr.id);
        ccp->my_proto = -1;
        if (algorithm[f]->Required(fp)) {
          log_Printf(LogWARN, "%s: Peer rejected (required) %s negotiation\n",
                     fp->link->name, protoname(algorithm[f]->id));
          fsm_Close(&fp->link->lcp.fsm);
        }
        break;
      }
    }
  }

  if (mode_type != MODE_NOP) {
    fsm_opt_normalise(dec);
    if (dec->rejend != dec->rej || dec->nakend != dec->nak) {
      if (ccp->in.state == ((void*)0)) {
        ccp->his_proto = -1;
        ccp->in.algorithm = -1;
      }
    }
  }
}
