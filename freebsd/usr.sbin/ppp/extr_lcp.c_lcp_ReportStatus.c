
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char* u_long ;
struct TYPE_5__ {int maxreq; int maxtrm; int timeout; } ;
struct TYPE_6__ {char* max_mru; char* max_mtu; char* lqrperiod; char* openmode; char* ident; int protocomp; int pap; scalar_t__ echo; int lqr; int chap81; int chap80lm; int chap80nt; int chap05; int acfcomp; TYPE_2__ fsm; scalar_t__ accmap; scalar_t__ mtu; scalar_t__ mru; } ;
struct TYPE_4__ {int state; int name; } ;
struct lcp {TYPE_3__ cfg; int my_reject; scalar_t__ want_shortseq; int want_mrru; scalar_t__ want_magic; scalar_t__ want_acfcomp; scalar_t__ want_protocomp; scalar_t__ want_accmap; int want_mru; int his_reject; scalar_t__ his_shortseq; int his_mrru; scalar_t__ his_magic; scalar_t__ his_acfcomp; scalar_t__ his_protocomp; scalar_t__ his_accmap; int his_mru; TYPE_1__ fsm; } ;
struct link {int name; struct lcp lcp; } ;
struct cmdargs {int prompt; } ;


 char* OPEN_PASSIVE ;
 int State2Nam (int ) ;
 struct link* command_ChooseLink (struct cmdargs const*) ;
 char* command_ShowNegval (int ) ;
 int prompt_Printf (int ,char*,...) ;

int
lcp_ReportStatus(struct cmdargs const *arg)
{
  struct link *l;
  struct lcp *lcp;

  l = command_ChooseLink(arg);
  lcp = &l->lcp;

  prompt_Printf(arg->prompt, "%s: %s [%s]\n", l->name, lcp->fsm.name,
                State2Nam(lcp->fsm.state));
  prompt_Printf(arg->prompt,
                " his side: MRU %d, ACCMAP %08lx, PROTOCOMP %s, ACFCOMP %s,\n"
                "           MAGIC %08lx, MRRU %u, SHORTSEQ %s, REJECT %04x\n",
                lcp->his_mru, (u_long)lcp->his_accmap,
                lcp->his_protocomp ? "on" : "off",
                lcp->his_acfcomp ? "on" : "off",
                (u_long)lcp->his_magic, lcp->his_mrru,
                lcp->his_shortseq ? "on" : "off", lcp->his_reject);
  prompt_Printf(arg->prompt,
                " my  side: MRU %d, ACCMAP %08lx, PROTOCOMP %s, ACFCOMP %s,\n"
                "           MAGIC %08lx, MRRU %u, SHORTSEQ %s, REJECT %04x\n",
                lcp->want_mru, (u_long)lcp->want_accmap,
                lcp->want_protocomp ? "on" : "off",
                lcp->want_acfcomp ? "on" : "off",
                (u_long)lcp->want_magic, lcp->want_mrru,
                lcp->want_shortseq ? "on" : "off", lcp->my_reject);

  if (lcp->cfg.mru)
    prompt_Printf(arg->prompt, "\n Defaults: MRU = %d (max %d), ",
                  lcp->cfg.mru, lcp->cfg.max_mru);
  else
    prompt_Printf(arg->prompt, "\n Defaults: MRU = any (max %d), ",
                  lcp->cfg.max_mru);
  if (lcp->cfg.mtu)
    prompt_Printf(arg->prompt, "MTU = %d (max %d), ",
                  lcp->cfg.mtu, lcp->cfg.max_mtu);
  else
    prompt_Printf(arg->prompt, "MTU = any (max %d), ", lcp->cfg.max_mtu);
  prompt_Printf(arg->prompt, "ACCMAP = %08lx\n", (u_long)lcp->cfg.accmap);
  prompt_Printf(arg->prompt, "           LQR period = %us, ",
                lcp->cfg.lqrperiod);
  prompt_Printf(arg->prompt, "Open Mode = %s",
                lcp->cfg.openmode == OPEN_PASSIVE ? "passive" : "active");
  if (lcp->cfg.openmode > 0)
    prompt_Printf(arg->prompt, " (delay %ds)", lcp->cfg.openmode);
  prompt_Printf(arg->prompt, "\n           FSM retry = %us, max %u Config"
                " REQ%s, %u Term REQ%s\n", lcp->cfg.fsm.timeout,
                lcp->cfg.fsm.maxreq, lcp->cfg.fsm.maxreq == 1 ? "" : "s",
                lcp->cfg.fsm.maxtrm, lcp->cfg.fsm.maxtrm == 1 ? "" : "s");
  prompt_Printf(arg->prompt, "    Ident: %s\n", lcp->cfg.ident);
  prompt_Printf(arg->prompt, "\n Negotiation:\n");
  prompt_Printf(arg->prompt, "           ACFCOMP =   %s\n",
                command_ShowNegval(lcp->cfg.acfcomp));
  prompt_Printf(arg->prompt, "           CHAP =      %s\n",
                command_ShowNegval(lcp->cfg.chap05));

  prompt_Printf(arg->prompt, "           CHAP80 =    %s\n",
                command_ShowNegval(lcp->cfg.chap80nt));
  prompt_Printf(arg->prompt, "           LANMan =    %s\n",
                command_ShowNegval(lcp->cfg.chap80lm));
  prompt_Printf(arg->prompt, "           CHAP81 =    %s\n",
                command_ShowNegval(lcp->cfg.chap81));

  prompt_Printf(arg->prompt, "           LQR =       %s\n",
                command_ShowNegval(lcp->cfg.lqr));
  prompt_Printf(arg->prompt, "           LCP ECHO =  %s\n",
                lcp->cfg.echo ? "enabled" : "disabled");
  prompt_Printf(arg->prompt, "           PAP =       %s\n",
                command_ShowNegval(lcp->cfg.pap));
  prompt_Printf(arg->prompt, "           PROTOCOMP = %s\n",
                command_ShowNegval(lcp->cfg.protocomp));

  return 0;
}
