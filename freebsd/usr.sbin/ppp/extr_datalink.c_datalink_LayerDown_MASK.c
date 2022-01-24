#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct fsm {scalar_t__ proto; } ;
struct TYPE_14__ {int /*<<< orphan*/  authtimer; } ;
struct TYPE_15__ {TYPE_6__ auth; } ;
struct TYPE_13__ {int /*<<< orphan*/  authtimer; } ;
struct TYPE_16__ {int /*<<< orphan*/  required; } ;
struct datalink {int state; TYPE_7__ chap; TYPE_5__ pap; TYPE_8__ cbcp; TYPE_4__* parent; TYPE_3__* physical; int /*<<< orphan*/  peer; } ;
struct TYPE_12__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerDown ) (int /*<<< orphan*/ ,struct fsm*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  fsm; } ;
struct TYPE_10__ {TYPE_1__ ccp; } ;
struct TYPE_11__ {TYPE_2__ link; } ;

/* Variables and functions */
#define  DATALINK_AUTH 130 
#define  DATALINK_CBCP 129 
 int /*<<< orphan*/  DATALINK_LCP ; 
#define  DATALINK_OPEN 128 
 scalar_t__ PROTO_LCP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC2 (struct datalink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct fsm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *v, struct fsm *fp)
{
  /* The given FSM has been told to come down */
  struct datalink *dl = (struct datalink *)v;

  if (fp->proto == PROTO_LCP) {
    switch (dl->state) {
      case DATALINK_OPEN:
        FUNC4(&dl->peer);
        FUNC3(&dl->physical->link.ccp.fsm);
        FUNC2(dl, DATALINK_LCP);  /* before parent TLD */
        (*dl->parent->LayerDown)(dl->parent->object, fp);
        /* FALLTHROUGH (just in case) */

      case DATALINK_CBCP:
        if (!dl->cbcp.required)
          FUNC0(&dl->cbcp);
        /* FALLTHROUGH (just in case) */

      case DATALINK_AUTH:
        FUNC6(&dl->pap.authtimer);
        FUNC6(&dl->chap.auth.authtimer);
    }
    FUNC2(dl, DATALINK_LCP);
    FUNC1(dl);
  }
}