#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct physical {scalar_t__ type; TYPE_8__* dl; } ;
struct TYPE_11__ {scalar_t__ opmask; } ;
struct TYPE_20__ {int accmap; int lqrperiod; int /*<<< orphan*/  lqr; int /*<<< orphan*/  pap; int /*<<< orphan*/  chap81; int /*<<< orphan*/  chap80lm; int /*<<< orphan*/  chap80nt; int /*<<< orphan*/  chap05; int /*<<< orphan*/  protocomp; int /*<<< orphan*/  acfcomp; void* mru; } ;
struct TYPE_17__ {int open_mode; scalar_t__ parent; TYPE_5__* bundle; int /*<<< orphan*/  link; } ;
struct TYPE_12__ {scalar_t__ opmask; } ;
struct lcp {int want_shortseq; int want_acfcomp; int his_accmap; int want_accmap; int his_protocomp; int want_protocomp; int want_authtype; int want_lqrperiod; scalar_t__ LcpFailedMagic; scalar_t__ auth_ineed; scalar_t__ auth_iwait; scalar_t__ my_reject; scalar_t__ his_reject; TYPE_10__ want_callback; void* want_auth; scalar_t__ want_magic; TYPE_9__ cfg; TYPE_6__ fsm; int /*<<< orphan*/  want_mrru; void* want_mru; scalar_t__ mru_req; scalar_t__ his_shortseq; TYPE_1__ his_callback; scalar_t__ his_authtype; scalar_t__ his_auth; scalar_t__ his_acfcomp; scalar_t__ his_lqrperiod; scalar_t__ his_magic; scalar_t__ his_mrru; void* his_mru; } ;
struct callback {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  callback; } ;
struct TYPE_19__ {TYPE_7__ cfg; } ;
struct TYPE_13__ {int /*<<< orphan*/  shortseq; int /*<<< orphan*/  mrru; } ;
struct TYPE_14__ {TYPE_2__ cfg; } ;
struct TYPE_15__ {TYPE_3__ mp; } ;
struct TYPE_16__ {TYPE_4__ ncp; } ;

/* Variables and functions */
 void* DEF_MRU ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PHYS_DIRECT ; 
 void* PROTO_CHAP ; 
 void* PROTO_PAP ; 
 struct physical* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,int /*<<< orphan*/ *,int) ; 

void
FUNC4(struct lcp *lcp, int openmode)
{
  struct physical *p = FUNC2(lcp->fsm.link);

  lcp->fsm.open_mode = openmode;

  lcp->his_mru = DEF_MRU;
  lcp->his_mrru = 0;
  lcp->his_magic = 0;
  lcp->his_lqrperiod = 0;
  lcp->his_acfcomp = 0;
  lcp->his_auth = 0;
  lcp->his_authtype = 0;
  lcp->his_callback.opmask = 0;
  lcp->his_shortseq = 0;
  lcp->mru_req = 0;

  if ((lcp->want_mru = lcp->cfg.mru) == 0)
    lcp->want_mru = DEF_MRU;
  lcp->want_mrru = lcp->fsm.bundle->ncp.mp.cfg.mrru;
  lcp->want_shortseq = FUNC1(lcp->fsm.bundle->ncp.mp.cfg.shortseq) ? 1 : 0;
  lcp->want_acfcomp = FUNC1(lcp->cfg.acfcomp) ? 1 : 0;

  if (lcp->fsm.parent) {
    lcp->his_accmap = 0xffffffff;
    lcp->want_accmap = lcp->cfg.accmap;
    lcp->his_protocomp = 0;
    lcp->want_protocomp = FUNC1(lcp->cfg.protocomp) ? 1 : 0;
    lcp->want_magic = FUNC0();

    if (FUNC1(lcp->cfg.chap05)) {
      lcp->want_auth = PROTO_CHAP;
      lcp->want_authtype = 0x05;
#ifndef NODES
    } else if (FUNC1(lcp->cfg.chap80nt) ||
               FUNC1(lcp->cfg.chap80lm)) {
      lcp->want_auth = PROTO_CHAP;
      lcp->want_authtype = 0x80;
    } else if (FUNC1(lcp->cfg.chap81)) {
      lcp->want_auth = PROTO_CHAP;
      lcp->want_authtype = 0x81;
#endif
    } else if (FUNC1(lcp->cfg.pap)) {
      lcp->want_auth = PROTO_PAP;
      lcp->want_authtype = 0;
    } else {
      lcp->want_auth = 0;
      lcp->want_authtype = 0;
    }

    if (p->type != PHYS_DIRECT)
      FUNC3(&lcp->want_callback, &p->dl->cfg.callback,
             sizeof(struct callback));
    else
      lcp->want_callback.opmask = 0;
    lcp->want_lqrperiod = FUNC1(lcp->cfg.lqr) ?
                          lcp->cfg.lqrperiod * 100 : 0;
  } else {
    lcp->his_accmap = lcp->want_accmap = 0;
    lcp->his_protocomp = lcp->want_protocomp = 1;
    lcp->want_magic = 0;
    lcp->want_auth = 0;
    lcp->want_authtype = 0;
    lcp->want_callback.opmask = 0;
    lcp->want_lqrperiod = 0;
  }

  lcp->his_reject = lcp->my_reject = 0;
  lcp->auth_iwait = lcp->auth_ineed = 0;
  lcp->LcpFailedMagic = 0;
}