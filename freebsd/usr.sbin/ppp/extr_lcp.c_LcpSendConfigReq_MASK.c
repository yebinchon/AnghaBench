#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct physical {int dummy; } ;
struct TYPE_14__ {scalar_t__ class; size_t len; int /*<<< orphan*/  address; } ;
struct TYPE_15__ {TYPE_6__ enddisc; int /*<<< orphan*/  negenddisc; } ;
struct mp {TYPE_7__ cfg; } ;
struct TYPE_13__ {TYPE_4__* bundle; } ;
struct TYPE_10__ {int opmask; int /*<<< orphan*/  msg; } ;
struct TYPE_9__ {int max_mru; } ;
struct lcp {int want_mru; int want_auth; scalar_t__ want_authtype; int want_mrru; TYPE_5__ fsm; scalar_t__ want_shortseq; TYPE_2__ want_callback; scalar_t__ want_lqrperiod; scalar_t__ want_magic; TYPE_1__ cfg; scalar_t__ want_accmap; scalar_t__ want_protocomp; scalar_t__ want_acfcomp; } ;
struct fsm_opt {scalar_t__* data; } ;
struct fsm {int /*<<< orphan*/  reqid; TYPE_8__* link; } ;
struct TYPE_16__ {size_t name; } ;
struct TYPE_11__ {struct mp mp; } ;
struct TYPE_12__ {TYPE_3__ ncp; } ;

/* Variables and functions */
 void* CALLBACK_AUTH ; 
 int FUNC0 (void*) ; 
 void* CALLBACK_CBCP ; 
 void* CALLBACK_E164 ; 
 int /*<<< orphan*/  CODE_CONFIGREQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct fsm_opt*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  MB_LCPOUT ; 
#define  PROTO_CHAP 129 
 int PROTO_LQR ; 
#define  PROTO_PAP 128 
 int /*<<< orphan*/  FUNC3 (struct lcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TY_ACCMAP ; 
 int /*<<< orphan*/  TY_ACFCOMP ; 
 int /*<<< orphan*/  TY_AUTHPROTO ; 
 int /*<<< orphan*/  TY_CALLBACK ; 
 int /*<<< orphan*/  TY_ENDDISC ; 
 int /*<<< orphan*/  TY_MAGICNUM ; 
 int /*<<< orphan*/  TY_MRRU ; 
 int /*<<< orphan*/  TY_MRU ; 
 int /*<<< orphan*/  TY_PROTOCOMP ; 
 int /*<<< orphan*/  TY_QUALPROTO ; 
 int /*<<< orphan*/  TY_SHORTSEQ ; 
 struct lcp* FUNC4 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct physical* FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC9 (struct physical*) ; 
 int /*<<< orphan*/  FUNC10 (struct physical*) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC14(struct fsm *fp)
{
  /* Send config REQ please */
  struct physical *p = FUNC6(fp->link);
  struct lcp *lcp = FUNC4(fp);
  u_char buff[200];
  struct fsm_opt *o;
  struct mp *mp;
  u_int16_t proto;
  u_short maxmru;

  if (!p) {
    FUNC7(LogERROR, "%s: LcpSendConfigReq: Not a physical link !\n",
              fp->link->name);
    return;
  }

  o = (struct fsm_opt *)buff;
  if (!FUNC10(p)) {
    if (lcp->want_acfcomp && !FUNC3(lcp, TY_ACFCOMP))
      FUNC1(TY_ACFCOMP, 2, o);

    if (lcp->want_protocomp && !FUNC3(lcp, TY_PROTOCOMP))
      FUNC1(TY_PROTOCOMP, 2, o);

    if (!FUNC3(lcp, TY_ACCMAP)) {
      FUNC12(&lcp->want_accmap, o->data);
      FUNC1(TY_ACCMAP, 6, o);
    }
  }

  maxmru = p ? FUNC9(p) : 0;
  if (lcp->cfg.max_mru && (!maxmru || maxmru > lcp->cfg.max_mru))
    maxmru = lcp->cfg.max_mru;
  if (maxmru && lcp->want_mru > maxmru) {
    FUNC7(LogWARN, "%s: Reducing configured MRU from %u to %u\n",
               fp->link->name, lcp->want_mru, maxmru);
    lcp->want_mru = maxmru;
  }
  if (!FUNC3(lcp, TY_MRU)) {
    FUNC13(&lcp->want_mru, o->data);
    FUNC1(TY_MRU, 4, o);
  }

  if (lcp->want_magic && !FUNC3(lcp, TY_MAGICNUM)) {
    FUNC12(&lcp->want_magic, o->data);
    FUNC1(TY_MAGICNUM, 6, o);
  }

  if (lcp->want_lqrperiod && !FUNC3(lcp, TY_QUALPROTO)) {
    proto = PROTO_LQR;
    FUNC13(&proto, o->data);
    FUNC12(&lcp->want_lqrperiod, o->data + 2);
    FUNC1(TY_QUALPROTO, 8, o);
  }

  switch (lcp->want_auth) {
  case PROTO_PAP:
    proto = PROTO_PAP;
    FUNC13(&proto, o->data);
    FUNC1(TY_AUTHPROTO, 4, o);
    break;

  case PROTO_CHAP:
    proto = PROTO_CHAP;
    FUNC13(&proto, o->data);
    o->data[2] = lcp->want_authtype;
    FUNC1(TY_AUTHPROTO, 5, o);
    break;
  }

  if (!FUNC3(lcp, TY_CALLBACK)) {
    if (lcp->want_callback.opmask & FUNC0(CALLBACK_AUTH)) {
      *o->data = CALLBACK_AUTH;
      FUNC1(TY_CALLBACK, 3, o);
    } else if (lcp->want_callback.opmask & FUNC0(CALLBACK_CBCP)) {
      *o->data = CALLBACK_CBCP;
      FUNC1(TY_CALLBACK, 3, o);
    } else if (lcp->want_callback.opmask & FUNC0(CALLBACK_E164)) {
      size_t sz = FUNC11(lcp->want_callback.msg);

      if (sz > sizeof o->data - 1) {
        sz = sizeof o->data - 1;
        FUNC7(LogWARN, "Truncating E164 data to %zu octets (oops!)\n",
	    sz);
      }
      *o->data = CALLBACK_E164;
      FUNC8(o->data + 1, lcp->want_callback.msg, sz);
      FUNC1(TY_CALLBACK, sz + 3, o);
    }
  }

  if (lcp->want_mrru && !FUNC3(lcp, TY_MRRU)) {
    FUNC13(&lcp->want_mrru, o->data);
    FUNC1(TY_MRRU, 4, o);

    if (lcp->want_shortseq && !FUNC3(lcp, TY_SHORTSEQ))
      FUNC1(TY_SHORTSEQ, 2, o);
  }

  mp = &lcp->fsm.bundle->ncp.mp;
  if (mp->cfg.enddisc.class != 0 && FUNC2(mp->cfg.negenddisc) &&
      !FUNC3(lcp, TY_ENDDISC)) {
    *o->data = mp->cfg.enddisc.class;
    FUNC8(o->data+1, mp->cfg.enddisc.address, mp->cfg.enddisc.len);
    FUNC1(TY_ENDDISC, mp->cfg.enddisc.len + 3, o);
  }

  FUNC5(fp, CODE_CONFIGREQ, fp->reqid, buff, (u_char *)o - buff,
             MB_LCPOUT);
}