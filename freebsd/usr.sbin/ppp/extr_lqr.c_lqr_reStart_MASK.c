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
struct TYPE_8__ {scalar_t__ load; } ;
struct TYPE_6__ {TYPE_4__ timer; } ;
struct TYPE_7__ {TYPE_2__ lqm; } ;
struct physical {TYPE_3__ hdlc; } ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;
struct lcp {TYPE_1__ fsm; } ;

/* Variables and functions */
 struct physical* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lcp*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

void
FUNC3(struct lcp *lcp)
{
  struct physical *p = FUNC0(lcp->fsm.link);

  FUNC1(lcp);
  if (p->hdlc.lqm.timer.load)
    FUNC2(&p->hdlc.lqm.timer);
}