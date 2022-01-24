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
struct TYPE_5__ {scalar_t__ reqs; } ;
struct fsm {TYPE_1__* link; int /*<<< orphan*/  name; TYPE_2__ more; int /*<<< orphan*/  FsmTimer; TYPE_3__* fn; int /*<<< orphan*/  restart; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* SendConfigReq ) (struct fsm*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  lcp; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct fsm *fp)
{
  if (fp->more.reqs-- > 0 && fp->restart-- > 0) {
    (*fp->fn->SendConfigReq)(fp);
    FUNC4(&fp->FsmTimer);		/* Start restart timer */
  } else {
    if (fp->more.reqs < 0)
      FUNC2(LogPHASE, "%s: Too many %s REQs sent - abandoning "
                 "negotiation\n", fp->link->name, fp->name);
    FUNC1(&fp->link->lcp);
    FUNC0(fp);
  }
}