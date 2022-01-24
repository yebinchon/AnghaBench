#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct fsm {scalar_t__ proto; TYPE_6__* link; TYPE_1__* bundle; } ;
struct datalink {scalar_t__ state; TYPE_5__* physical; struct datalink* next; } ;
struct TYPE_18__ {scalar_t__ active; } ;
struct TYPE_17__ {TYPE_8__ mp; } ;
struct TYPE_12__ {scalar_t__ sessiontime; } ;
struct bundle {TYPE_7__ ncp; struct datalink* links; scalar_t__ upat; TYPE_2__ radius; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_13__ {struct fsm fsm; } ;
struct TYPE_14__ {TYPE_3__ lcp; } ;
struct TYPE_15__ {TYPE_4__ link; } ;
struct TYPE_11__ {int /*<<< orphan*/  ncp; } ;

/* Variables and functions */
 scalar_t__ DATALINK_CLOSED ; 
 scalar_t__ DATALINK_HANGUP ; 
 int /*<<< orphan*/  LogALERT ; 
 scalar_t__ PROTO_LCP ; 
 int /*<<< orphan*/  FUNC0 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC2 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct bundle*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,struct datalink*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(void *v, struct fsm *fp)
{
  /*
   * The given FSM has been told to come down.
   * If it's our last NCP, stop the idle timer.
   * If it's our last NCP, clear our ``upat'' value.
   * If it's our last NCP, stop the autoload timer
   * If it's an LCP, adjust our phys_type.open value and any timers.
   * If it's an LCP and we're in multilink mode, adjust our tun
   * If it's the last LCP, down all NCPs
   * speed and make sure our minimum sequence number is adjusted.
   */

  struct bundle *bundle = (struct bundle *)v;

  if (FUNC4(fp->proto)) {
    if (FUNC10(&fp->bundle->ncp) == 0) {
#ifndef NORADIUS
      if (bundle->radius.sessiontime)
        FUNC3(bundle);
#endif
      FUNC2(bundle);
      bundle->upat = 0;
      FUNC8(&bundle->ncp.mp);
    }
  } else if (fp->proto == PROTO_LCP) {
    struct datalink *dl;
    struct datalink *lost;
    int others_active;

    FUNC1(bundle);  /* adjust timers & phys_type values */

    lost = NULL;
    others_active = 0;
    for (dl = bundle->links; dl; dl = dl->next) {
      if (fp == &dl->physical->link.lcp.fsm)
        lost = dl;
      else if (dl->state != DATALINK_CLOSED && dl->state != DATALINK_HANGUP)
        others_active++;
    }

    if (bundle->ncp.mp.active) {
      FUNC0(bundle);

      if (lost)
        FUNC7(&bundle->ncp.mp, lost);
      else
        FUNC5(LogALERT, "Oops, lost an unrecognised datalink (%s) !\n",
                   fp->link->name);
    }

    if (!others_active) {
      /* Down the NCPs.  We don't expect to get fsm_Close()d ourself ! */
      FUNC9(&bundle->ncp);
      FUNC6(&bundle->ncp.mp);
    }
  }
}