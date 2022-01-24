#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char* u_long ;
struct TYPE_5__ {int maxreq; int maxtrm; int /*<<< orphan*/  timeout; } ;
struct TYPE_6__ {char* max_mru; char* max_mtu; char* lqrperiod; char* openmode; char* ident; int /*<<< orphan*/  protocomp; int /*<<< orphan*/  pap; scalar_t__ echo; int /*<<< orphan*/  lqr; int /*<<< orphan*/  chap81; int /*<<< orphan*/  chap80lm; int /*<<< orphan*/  chap80nt; int /*<<< orphan*/  chap05; int /*<<< orphan*/  acfcomp; TYPE_2__ fsm; scalar_t__ accmap; scalar_t__ mtu; scalar_t__ mru; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;
struct lcp {TYPE_3__ cfg; int /*<<< orphan*/  my_reject; scalar_t__ want_shortseq; int /*<<< orphan*/  want_mrru; scalar_t__ want_magic; scalar_t__ want_acfcomp; scalar_t__ want_protocomp; scalar_t__ want_accmap; int /*<<< orphan*/  want_mru; int /*<<< orphan*/  his_reject; scalar_t__ his_shortseq; int /*<<< orphan*/  his_mrru; scalar_t__ his_magic; scalar_t__ his_acfcomp; scalar_t__ his_protocomp; scalar_t__ his_accmap; int /*<<< orphan*/  his_mru; TYPE_1__ fsm; } ;
struct link {int /*<<< orphan*/  name; struct lcp lcp; } ;
struct cmdargs {int /*<<< orphan*/  prompt; } ;

/* Variables and functions */
 char* OPEN_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct link* FUNC1 (struct cmdargs const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC4(struct cmdargs const *arg)
{
  struct link *l;
  struct lcp *lcp;

  l = FUNC1(arg);
  lcp = &l->lcp;

  FUNC3(arg->prompt, "%s: %s [%s]\n", l->name, lcp->fsm.name,
                FUNC0(lcp->fsm.state));
  FUNC3(arg->prompt,
                " his side: MRU %d, ACCMAP %08lx, PROTOCOMP %s, ACFCOMP %s,\n"
                "           MAGIC %08lx, MRRU %u, SHORTSEQ %s, REJECT %04x\n",
                lcp->his_mru, (u_long)lcp->his_accmap,
                lcp->his_protocomp ? "on" : "off",
                lcp->his_acfcomp ? "on" : "off",
                (u_long)lcp->his_magic, lcp->his_mrru,
                lcp->his_shortseq ? "on" : "off", lcp->his_reject);
  FUNC3(arg->prompt,
                " my  side: MRU %d, ACCMAP %08lx, PROTOCOMP %s, ACFCOMP %s,\n"
                "           MAGIC %08lx, MRRU %u, SHORTSEQ %s, REJECT %04x\n",
                lcp->want_mru, (u_long)lcp->want_accmap,
                lcp->want_protocomp ? "on" : "off",
                lcp->want_acfcomp ? "on" : "off",
                (u_long)lcp->want_magic, lcp->want_mrru,
                lcp->want_shortseq ? "on" : "off", lcp->my_reject);

  if (lcp->cfg.mru)
    FUNC3(arg->prompt, "\n Defaults: MRU = %d (max %d), ",
                  lcp->cfg.mru, lcp->cfg.max_mru);
  else
    FUNC3(arg->prompt, "\n Defaults: MRU = any (max %d), ",
                  lcp->cfg.max_mru);
  if (lcp->cfg.mtu)
    FUNC3(arg->prompt, "MTU = %d (max %d), ",
                  lcp->cfg.mtu, lcp->cfg.max_mtu);
  else
    FUNC3(arg->prompt, "MTU = any (max %d), ", lcp->cfg.max_mtu);
  FUNC3(arg->prompt, "ACCMAP = %08lx\n", (u_long)lcp->cfg.accmap);
  FUNC3(arg->prompt, "           LQR period = %us, ",
                lcp->cfg.lqrperiod);
  FUNC3(arg->prompt, "Open Mode = %s",
                lcp->cfg.openmode == OPEN_PASSIVE ? "passive" : "active");
  if (lcp->cfg.openmode > 0)
    FUNC3(arg->prompt, " (delay %ds)", lcp->cfg.openmode);
  FUNC3(arg->prompt, "\n           FSM retry = %us, max %u Config"
                " REQ%s, %u Term REQ%s\n", lcp->cfg.fsm.timeout,
                lcp->cfg.fsm.maxreq, lcp->cfg.fsm.maxreq == 1 ? "" : "s",
                lcp->cfg.fsm.maxtrm, lcp->cfg.fsm.maxtrm == 1 ? "" : "s");
  FUNC3(arg->prompt, "    Ident: %s\n", lcp->cfg.ident);
  FUNC3(arg->prompt, "\n Negotiation:\n");
  FUNC3(arg->prompt, "           ACFCOMP =   %s\n",
                FUNC2(lcp->cfg.acfcomp));
  FUNC3(arg->prompt, "           CHAP =      %s\n",
                FUNC2(lcp->cfg.chap05));
#ifndef NODES
  FUNC3(arg->prompt, "           CHAP80 =    %s\n",
                FUNC2(lcp->cfg.chap80nt));
  FUNC3(arg->prompt, "           LANMan =    %s\n",
                FUNC2(lcp->cfg.chap80lm));
  FUNC3(arg->prompt, "           CHAP81 =    %s\n",
                FUNC2(lcp->cfg.chap81));
#endif
  FUNC3(arg->prompt, "           LQR =       %s\n",
                FUNC2(lcp->cfg.lqr));
  FUNC3(arg->prompt, "           LCP ECHO =  %s\n",
                lcp->cfg.echo ? "enabled" : "disabled");
  FUNC3(arg->prompt, "           PAP =       %s\n",
                FUNC2(lcp->cfg.pap));
  FUNC3(arg->prompt, "           PROTOCOMP = %s\n",
                FUNC2(lcp->cfg.protocomp));

  return 0;
}