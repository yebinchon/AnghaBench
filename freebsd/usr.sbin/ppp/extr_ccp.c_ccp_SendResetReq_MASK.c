#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fsm {int /*<<< orphan*/  reqid; } ;
struct ccp {int last_reset; int /*<<< orphan*/  reset_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_RESETREQ ; 
 int /*<<< orphan*/  MB_CCPOUT ; 
 struct ccp* FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct fsm *fp)
{
  /* We can't read our input - ask peer to reset */
  struct ccp *ccp = FUNC0(fp);

  ccp->reset_sent = fp->reqid;
  ccp->last_reset = -1;
  FUNC1(fp, CODE_RESETREQ, fp->reqid, NULL, 0, MB_CCPOUT);
}