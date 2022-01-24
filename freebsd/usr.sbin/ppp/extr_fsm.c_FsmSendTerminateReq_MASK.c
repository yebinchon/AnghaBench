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
struct fsm {int /*<<< orphan*/  restart; int /*<<< orphan*/  FsmTimer; TYPE_1__* fn; int /*<<< orphan*/  reqid; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* SentTerminateReq ) (struct fsm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_TERMREQ ; 
 int /*<<< orphan*/  MB_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct fsm *fp)
{
  FUNC0(fp, CODE_TERMREQ, fp->reqid, NULL, 0, MB_UNKNOWN);
  (*fp->fn->SentTerminateReq)(fp);
  FUNC2(&fp->FsmTimer);	/* Start restart timer */
  fp->restart--;		/* Decrement restart counter */
}