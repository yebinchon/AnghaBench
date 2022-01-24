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
struct fsm {scalar_t__ proto; scalar_t__ state; scalar_t__ open_mode; } ;
struct datalink {TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerFinish ) (int /*<<< orphan*/ ,struct fsm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_NORMAL ; 
 scalar_t__ OPEN_PASSIVE ; 
 scalar_t__ PROTO_LCP ; 
 scalar_t__ ST_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct datalink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fsm*) ; 

__attribute__((used)) static void
FUNC4(void *v, struct fsm *fp)
{
  /* The given fsm is now down */
  struct datalink *dl = (struct datalink *)v;

  if (fp->proto == PROTO_LCP) {
    FUNC1(fp);
    (*dl->parent->LayerFinish)(dl->parent->object, fp);
    FUNC0(dl, CLOSE_NORMAL);
  } else if (fp->state == ST_CLOSED && fp->open_mode == OPEN_PASSIVE)
    FUNC2(fp);		/* CCP goes to ST_STOPPED */
}