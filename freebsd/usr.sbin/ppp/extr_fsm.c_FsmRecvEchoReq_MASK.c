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
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {int dummy; } ;
struct lcp {scalar_t__ his_magic; int /*<<< orphan*/  want_magic; } ;
struct fsmheader {int /*<<< orphan*/  length; int /*<<< orphan*/  id; } ;
struct fsm {scalar_t__ state; TYPE_1__* link; int /*<<< orphan*/  LogLevel; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_ECHOREP ; 
 int /*<<< orphan*/ * FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_ECHOIN ; 
 int /*<<< orphan*/  MB_ECHOOUT ; 
 scalar_t__ ST_OPENED ; 
 struct lcp* FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 struct mbuf* FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static void
FUNC10(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)
{
  struct lcp *lcp = FUNC1(fp);
  u_char *cp;
  u_int32_t magic;

  bp = FUNC5(bp);
  FUNC6(bp, MB_ECHOIN);

  if (lcp && FUNC7(lhp->length) - sizeof *lhp >= 4) {
    cp = FUNC0(bp);
    FUNC9(cp, &magic);
    if (magic != lcp->his_magic) {
      FUNC3(fp->LogLevel, "%s: RecvEchoReq: magic 0x%08lx is wrong,"
                 " expecting 0x%08lx\n", fp->link->name, (u_long)magic,
                 (u_long)lcp->his_magic);
      /* XXX: We should send terminate request */
    }
    if (fp->state == ST_OPENED) {
      FUNC8(&lcp->want_magic, cp);		/* local magic */
      FUNC2(fp, CODE_ECHOREP, lhp->id, cp,
                 FUNC7(lhp->length) - sizeof *lhp, MB_ECHOOUT);
    }
  }
  FUNC4(bp);
}