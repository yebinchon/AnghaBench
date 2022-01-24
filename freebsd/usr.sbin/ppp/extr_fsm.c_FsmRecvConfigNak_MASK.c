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
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {int dummy; } ;
struct fsmheader {int /*<<< orphan*/  id; int /*<<< orphan*/  length; } ;
struct fsm_opt_hdr {int dummy; } ;
struct fsm_decode {int /*<<< orphan*/  rej; int /*<<< orphan*/  rejend; int /*<<< orphan*/  nak; int /*<<< orphan*/  nakend; int /*<<< orphan*/  ack; int /*<<< orphan*/  ackend; } ;
struct fsm {int state; TYPE_3__* parent; TYPE_2__* fn; int /*<<< orphan*/  LogLevel; TYPE_1__* link; } ;
struct TYPE_6__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerDown ) (int /*<<< orphan*/ ,struct fsm*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* LayerDown ) (struct fsm*) ;int /*<<< orphan*/  (* DecodeConfig ) (struct fsm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsm_decode*) ;int /*<<< orphan*/  (* SendTerminateAck ) (struct fsm*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSM_REQ_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/ * FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  MODE_NAK ; 
 int /*<<< orphan*/  FUNC3 (struct fsm*,int const) ; 
#define  ST_ACKRCVD 137 
#define  ST_ACKSENT 136 
#define  ST_CLOSED 135 
#define  ST_CLOSING 134 
#define  ST_INITIAL 133 
#define  ST_OPENED 132 
#define  ST_REQSENT 131 
#define  ST_STARTING 130 
#define  ST_STOPPED 129 
#define  ST_STOPPING 128 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int FUNC7 (struct mbuf*) ; 
 struct mbuf* FUNC8 (struct mbuf*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fsm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsm_decode*) ; 
 int /*<<< orphan*/  FUNC12 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct fsm*) ; 

__attribute__((used)) static void
FUNC14(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)
/* RCN */
{
  struct fsm_decode dec;
  int plen, flen;
  u_char *cp;

  plen = FUNC7(bp);
  flen = FUNC9(lhp->length) - sizeof *lhp;
  if (plen < flen) {
    FUNC6(bp);
    return;
  }

  /*
   * Check and process easy case
   */
  switch (fp->state) {
  case ST_INITIAL:
  case ST_STARTING:
    FUNC5(fp->LogLevel, "%s: Oops, RCN in %s.\n",
              fp->link->name, FUNC4(fp->state));
    FUNC6(bp);
    return;
  case ST_CLOSED:
  case ST_STOPPED:
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    FUNC6(bp);
    return;
  case ST_CLOSING:
  case ST_STOPPING:
    FUNC6(bp);
    return;
  }

  bp = FUNC8(bp);
  dec.ackend = dec.ack;
  dec.nakend = dec.nak;
  dec.rejend = dec.rej;
  cp = FUNC2(bp);
  (*fp->fn->DecodeConfig)(fp, cp, cp + flen, MODE_NAK, &dec);
  if (flen < (int)sizeof(struct fsm_opt_hdr))
    FUNC5(fp->LogLevel, "  [EMPTY]\n");

  switch (fp->state) {
  case ST_REQSENT:
  case ST_ACKSENT:
    FUNC0(fp, FSM_REQ_TIMER);
    FUNC1(fp);
    break;
  case ST_OPENED:
    (*fp->fn->LayerDown)(fp);
    FUNC1(fp);
    FUNC3(fp, ST_REQSENT);
    (*fp->parent->LayerDown)(fp->parent->object, fp);
    break;
  case ST_ACKRCVD:
    FUNC1(fp);
    FUNC3(fp, ST_REQSENT);
    break;
  }

  FUNC6(bp);
}