#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fsm {scalar_t__ state; TYPE_2__* parent; TYPE_1__* fn; } ;
struct TYPE_4__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerDown ) (int /*<<< orphan*/ ,struct fsm*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* LayerDown ) (struct fsm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FSM_REQ_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsm*,int /*<<< orphan*/ ) ; 
 scalar_t__ ST_OPENED ; 
 int /*<<< orphan*/  ST_REQSENT ; 
 int /*<<< orphan*/  FUNC3 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fsm*) ; 

void
FUNC5(struct fsm *fp)
{
  if (fp->state == ST_OPENED) {
    (*fp->fn->LayerDown)(fp);
    FUNC0(fp, FSM_REQ_TIMER);
    FUNC1(fp);
    FUNC2(fp, ST_REQSENT);
    (*fp->parent->LayerDown)(fp->parent->object, fp);
  }
}