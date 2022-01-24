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
struct fsm {int state; TYPE_3__* parent; TYPE_2__* fn; TYPE_1__* link; int /*<<< orphan*/  LogLevel; } ;
struct TYPE_6__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerDown ) (int /*<<< orphan*/ ,struct fsm*) ;int /*<<< orphan*/  (* LayerUp ) (int /*<<< orphan*/ ,struct fsm*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* LayerDown ) (struct fsm*) ;int /*<<< orphan*/  (* LayerUp ) (struct fsm*) ;int /*<<< orphan*/  (* SendTerminateAck ) (struct fsm*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* DecodeConfig ) (struct fsm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsm_decode*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  lcp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSM_REQ_TIMER ; 
 int /*<<< orphan*/  FSM_TRM_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsm*) ; 
 int /*<<< orphan*/ * FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  MODE_ACK ; 
 int /*<<< orphan*/  FUNC4 (struct fsm*,int const) ; 
#define  ST_ACKRCVD 135 
#define  ST_ACKSENT 134 
#define  ST_CLOSED 133 
#define  ST_CLOSING 132 
#define  ST_OPENED 131 
#define  ST_REQSENT 130 
#define  ST_STOPPED 129 
#define  ST_STOPPING 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int FUNC8 (struct mbuf*) ; 
 struct mbuf* FUNC9 (struct mbuf*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fsm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsm_decode*) ; 
 int /*<<< orphan*/  FUNC12 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct fsm*) ; 
 int /*<<< orphan*/  FUNC15 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC16 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct fsm*) ; 

__attribute__((used)) static void
FUNC18(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)
/* RCA */
{
  struct fsm_decode dec;
  int plen, flen;
  u_char *cp;

  plen = FUNC8(bp);
  flen = FUNC10(lhp->length) - sizeof *lhp;
  if (plen < flen) {
    FUNC7(bp);
    return;
  }

  bp = FUNC9(bp);
  dec.ackend = dec.ack;
  dec.nakend = dec.nak;
  dec.rejend = dec.rej;
  cp = FUNC3(bp);
  (*fp->fn->DecodeConfig)(fp, cp, cp + flen, MODE_ACK, &dec);
  if (flen < (int)sizeof(struct fsm_opt_hdr))
    FUNC6(fp->LogLevel, "  [EMPTY]\n");

  switch (fp->state) {
    case ST_CLOSED:
    case ST_STOPPED:
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    break;
  case ST_CLOSING:
  case ST_STOPPING:
    break;
  case ST_REQSENT:
    FUNC0(fp, FSM_REQ_TIMER);
    FUNC4(fp, ST_ACKRCVD);
    break;
  case ST_ACKRCVD:
    FUNC1(fp);
    FUNC4(fp, ST_REQSENT);
    break;
  case ST_ACKSENT:
    FUNC0(fp, FSM_REQ_TIMER);
    FUNC4(fp, ST_OPENED);
    if ((*fp->fn->LayerUp)(fp))
      (*fp->parent->LayerUp)(fp->parent->object, fp);
    else {
      (*fp->fn->LayerDown)(fp);
      FUNC0(fp, FSM_TRM_TIMER);
      FUNC2(fp);
      FUNC4(fp, ST_CLOSING);
      FUNC5(&fp->link->lcp);
    }
    break;
  case ST_OPENED:
    (*fp->fn->LayerDown)(fp);
    FUNC1(fp);
    FUNC4(fp, ST_REQSENT);
    (*fp->parent->LayerDown)(fp->parent->object, fp);
    break;
  }
  FUNC7(bp);
}