
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_19__ {char* keybits; int state; scalar_t__ required; } ;
struct TYPE_17__ {char* winsize; } ;
struct TYPE_16__ {char* winsize; } ;
struct TYPE_18__ {TYPE_6__ out; TYPE_5__ in; } ;
struct TYPE_15__ {int maxreq; int maxtrm; int timeout; } ;
struct TYPE_20__ {int * neg; TYPE_8__ mppe; TYPE_7__ deflate; TYPE_4__ fsm; } ;
struct TYPE_14__ {int algorithm; struct ccp_opt* opt; } ;
struct TYPE_13__ {int algorithm; int opt; } ;
struct TYPE_12__ {scalar_t__ state; int name; } ;
struct ccp {TYPE_9__ cfg; TYPE_3__ out; TYPE_2__ in; int uncompin; int compin; int compout; int uncompout; int his_proto; int my_proto; TYPE_1__ fsm; } ;
struct link {int name; struct ccp ccp; } ;
struct cmdargs {int prompt; } ;
struct ccp_opt {int val; struct ccp_opt* next; } ;
struct TYPE_11__ {char* (* Disp ) (int *) ;size_t Neg; } ;


 size_t CCP_NEG_DEFLATE ;
 size_t CCP_NEG_DEFLATE24 ;
 size_t CCP_NEG_MPPE ;
 size_t CCP_NEG_PRED1 ;
 scalar_t__ IsEnabled (int ) ;



 scalar_t__ ST_OPENED ;
 int State2Nam (scalar_t__) ;
 TYPE_10__** algorithm ;
 struct link* command_ChooseLink (struct cmdargs const*) ;
 char* command_ShowNegval (int ) ;
 int prompt_Printf (int ,char*,...) ;
 int protoname (int ) ;
 char* stub1 (int *) ;
 char* stub2 (int *) ;

int
ccp_ReportStatus(struct cmdargs const *arg)
{
  struct ccp_opt **o;
  struct link *l;
  struct ccp *ccp;
  int f;

  l = command_ChooseLink(arg);
  ccp = &l->ccp;

  prompt_Printf(arg->prompt, "%s: %s [%s]\n", l->name, ccp->fsm.name,
                State2Nam(ccp->fsm.state));
  if (ccp->fsm.state == ST_OPENED) {
    prompt_Printf(arg->prompt, " My protocol = %s, His protocol = %s\n",
                  protoname(ccp->my_proto), protoname(ccp->his_proto));
    prompt_Printf(arg->prompt, " Output: %ld --> %ld,  Input: %ld --> %ld\n",
                  ccp->uncompout, ccp->compout,
                  ccp->compin, ccp->uncompin);
  }

  if (ccp->in.algorithm != -1)
    prompt_Printf(arg->prompt, "\n Input Options:  %s\n",
                  (*algorithm[ccp->in.algorithm]->Disp)(&ccp->in.opt));

  if (ccp->out.algorithm != -1) {
    o = &ccp->out.opt;
    for (f = 0; f < ccp->out.algorithm; f++)
      if (IsEnabled(ccp->cfg.neg[algorithm[f]->Neg]))
        o = &(*o)->next;
    prompt_Printf(arg->prompt, " Output Options: %s\n",
                  (*algorithm[ccp->out.algorithm]->Disp)(&(*o)->val));
  }

  prompt_Printf(arg->prompt, "\n Defaults: ");
  prompt_Printf(arg->prompt, "FSM retry = %us, max %u Config"
                " REQ%s, %u Term REQ%s\n", ccp->cfg.fsm.timeout,
                ccp->cfg.fsm.maxreq, ccp->cfg.fsm.maxreq == 1 ? "" : "s",
                ccp->cfg.fsm.maxtrm, ccp->cfg.fsm.maxtrm == 1 ? "" : "s");
  prompt_Printf(arg->prompt, "           deflate windows: ");
  prompt_Printf(arg->prompt, "incoming = %d, ", ccp->cfg.deflate.in.winsize);
  prompt_Printf(arg->prompt, "outgoing = %d\n", ccp->cfg.deflate.out.winsize);

  prompt_Printf(arg->prompt, "           MPPE: ");
  if (ccp->cfg.mppe.keybits)
    prompt_Printf(arg->prompt, "%d bits, ", ccp->cfg.mppe.keybits);
  else
    prompt_Printf(arg->prompt, "any bits, ");
  switch (ccp->cfg.mppe.state) {
  case 129:
    prompt_Printf(arg->prompt, "stateful");
    break;
  case 128:
    prompt_Printf(arg->prompt, "stateless");
    break;
  case 130:
    prompt_Printf(arg->prompt, "any state");
    break;
  }
  prompt_Printf(arg->prompt, "%s\n",
                ccp->cfg.mppe.required ? ", required" : "");


  prompt_Printf(arg->prompt, "\n           DEFLATE:    %s\n",
                command_ShowNegval(ccp->cfg.neg[CCP_NEG_DEFLATE]));
  prompt_Printf(arg->prompt, "           PREDICTOR1: %s\n",
                command_ShowNegval(ccp->cfg.neg[CCP_NEG_PRED1]));
  prompt_Printf(arg->prompt, "           DEFLATE24:  %s\n",
                command_ShowNegval(ccp->cfg.neg[CCP_NEG_DEFLATE24]));

  prompt_Printf(arg->prompt, "           MPPE:       %s\n",
                command_ShowNegval(ccp->cfg.neg[CCP_NEG_MPPE]));

  return 0;
}
