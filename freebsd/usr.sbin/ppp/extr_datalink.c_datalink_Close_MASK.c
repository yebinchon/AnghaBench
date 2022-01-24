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
struct datalink {int state; TYPE_2__* physical; int /*<<< orphan*/  peer; } ;
struct TYPE_7__ {int /*<<< orphan*/  fsm; } ;
struct TYPE_5__ {int /*<<< orphan*/  fsm; } ;
struct TYPE_8__ {TYPE_3__ lcp; TYPE_1__ ccp; } ;
struct TYPE_6__ {TYPE_4__ link; } ;

/* Variables and functions */
 int CLOSE_LCP ; 
 int CLOSE_STAYDOWN ; 
#define  DATALINK_AUTH 131 
#define  DATALINK_CBCP 130 
#define  DATALINK_LCP 129 
#define  DATALINK_OPEN 128 
 int /*<<< orphan*/  FUNC0 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC1 (struct datalink*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC3 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct datalink *dl, int how)
{
  /* Please close */
  switch (dl->state) {
    case DATALINK_OPEN:
      FUNC6(&dl->peer);
      FUNC4(&dl->physical->link.ccp.fsm);
      /* FALLTHROUGH */

    case DATALINK_CBCP:
    case DATALINK_AUTH:
    case DATALINK_LCP:
      FUNC0(dl);
      if (how == CLOSE_LCP)
        FUNC2(dl);
      else if (how == CLOSE_STAYDOWN)
        FUNC3(dl);
      FUNC5(&dl->physical->link.lcp.fsm);
      break;

    default:
      FUNC1(dl, how);
  }
}