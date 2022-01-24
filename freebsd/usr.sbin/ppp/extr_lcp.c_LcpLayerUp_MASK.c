#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct physical {int /*<<< orphan*/  hdlc; } ;
struct TYPE_6__ {int maxreq; } ;
struct TYPE_7__ {TYPE_2__ fsm; } ;
struct lcp {TYPE_3__ cfg; int /*<<< orphan*/  his_accmap; int /*<<< orphan*/  want_accmap; } ;
struct TYPE_5__ {int reqs; int naks; int rejs; } ;
struct fsm {TYPE_1__ more; TYPE_4__* link; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogLCP ; 
 struct lcp* FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lcp*) ; 
 struct physical* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lcp*) ; 
 int /*<<< orphan*/  FUNC6 (struct physical*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct fsm *fp)
{
  /* We're now up */
  struct physical *p = FUNC3(fp->link);
  struct lcp *lcp = FUNC0(fp);

  FUNC4(LogLCP, "%s: LayerUp\n", fp->link->name);
  FUNC6(p, lcp->want_accmap, lcp->his_accmap);
  FUNC5(lcp);
  FUNC1(&p->hdlc);
  fp->more.reqs = fp->more.naks = fp->more.rejs = lcp->cfg.fsm.maxreq * 3;

  FUNC2(lcp);

  return 1;
}