#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {int /*<<< orphan*/  m_len; } ;
struct fsmheader {int code; int /*<<< orphan*/  id; int /*<<< orphan*/  length; } ;
struct fsmcodedesc {int /*<<< orphan*/  (* recv ) (struct fsm*,struct fsmheader*,struct mbuf*) ;scalar_t__ check_reqid; scalar_t__ inc_reqid; int /*<<< orphan*/  name; } ;
struct fsm {int min_code; int max_code; int /*<<< orphan*/  reqid; int /*<<< orphan*/  bundle; int /*<<< orphan*/  state; TYPE_1__* link; int /*<<< orphan*/  LogLevel; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_CODEREJ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsmcodedesc* FsmCodes ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_UNKNOWN ; 
 int /*<<< orphan*/  OPT_IDCHECK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 size_t FUNC6 (struct mbuf*) ; 
 struct mbuf* FUNC7 (struct mbuf*,struct fsmheader*,int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC8 (struct mbuf*) ; 
 struct mbuf* FUNC9 (struct mbuf*,struct fsmheader*,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fsm*,struct fsmheader*,struct mbuf*) ; 

void
FUNC12(struct fsm *fp, struct mbuf *bp)
{
  size_t len;
  struct fsmheader lh;
  const struct fsmcodedesc *codep;

  len = FUNC6(bp);
  if (len < sizeof(struct fsmheader)) {
    FUNC5(bp);
    return;
  }
  bp = FUNC9(bp, &lh, sizeof lh);

  if (FUNC10(lh.length) > len) {
    FUNC4(LogWARN, "%s: Oops: Got %zu bytes but %d byte payload "
               "- dropped\n", fp->link->name, len, (int)FUNC10(lh.length));
    FUNC5(bp);
    return;
  }

  if (lh.code < fp->min_code || lh.code > fp->max_code ||
      lh.code > sizeof FsmCodes / sizeof *FsmCodes) {
    /*
     * Use a private id.  This is really a response-type packet, but we
     * MUST send a unique id for each REQ....
     */
    static u_char id;

    bp = FUNC7(bp, &lh, sizeof lh, 0);
    bp = FUNC8(bp);
    FUNC3(fp, CODE_CODEREJ, id++, FUNC1(bp), bp->m_len, MB_UNKNOWN);
    FUNC5(bp);
    return;
  }

  codep = FsmCodes + lh.code - 1;
  if (lh.id != fp->reqid && codep->check_reqid &&
      FUNC0(fp->bundle, OPT_IDCHECK)) {
    FUNC4(fp->LogLevel, "%s: Recv%s(%d), dropped (expected %d)\n",
               fp->link->name, codep->name, lh.id, fp->reqid);
    return;
  }

  FUNC4(fp->LogLevel, "%s: Recv%s(%d) state = %s\n",
             fp->link->name, codep->name, lh.id, FUNC2(fp->state));

  if (codep->inc_reqid && (lh.id == fp->reqid ||
      (!FUNC0(fp->bundle, OPT_IDCHECK) && codep->check_reqid)))
    fp->reqid++;	/* That's the end of that ``exchange''.... */

  (*codep->recv)(fp, &lh, bp);
}