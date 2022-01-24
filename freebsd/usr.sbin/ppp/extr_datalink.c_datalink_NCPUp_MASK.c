#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  authname; } ;
struct datalink {TYPE_4__* physical; TYPE_2__* parent; TYPE_11__* bundle; TYPE_1__ peer; int /*<<< orphan*/  name; } ;
struct TYPE_24__ {int /*<<< orphan*/  open_mode; } ;
struct TYPE_23__ {TYPE_1__ peer; } ;
struct TYPE_19__ {int /*<<< orphan*/  fsm; scalar_t__ his_mrru; scalar_t__ want_mrru; } ;
struct TYPE_15__ {TYPE_8__ fsm; } ;
struct TYPE_22__ {TYPE_3__ lcp; TYPE_10__ ccp; } ;
struct TYPE_21__ {TYPE_7__ mp; } ;
struct TYPE_20__ {TYPE_6__ link; } ;
struct TYPE_18__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerUp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_16__ {TYPE_5__ ncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATALINK_OPEN ; 
 int /*<<< orphan*/  LogPHASE ; 
#define  MP_ADDED 131 
#define  MP_FAILED 130 
#define  MP_LINKSENT 129 
#define  MP_UP 128 
 int /*<<< orphan*/  OPEN_PASSIVE ; 
 scalar_t__ PHASE_NETWORK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_11__*) ; 
 int FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC6 (struct datalink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_7__*,struct datalink*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC14(struct datalink *dl)
{
  int ccpok = FUNC4(&dl->physical->link.ccp);

  if (dl->physical->link.lcp.want_mrru && dl->physical->link.lcp.his_mrru) {
    /* we've authenticated in multilink mode ! */
    switch (FUNC10(&dl->bundle->ncp.mp, dl)) {
      case MP_LINKSENT:
        /* We've handed the link off to another ppp (well, we will soon) ! */
        return;
      case MP_UP:
        /* First link in the bundle */
        FUNC0(dl->bundle, dl->peer.authname);
        FUNC1(dl->bundle);
        /* FALLTHROUGH */
      case MP_ADDED:
        /* We're in multilink mode ! */
        dl->physical->link.ccp.fsm.open_mode = OPEN_PASSIVE;	/* override */
        FUNC1(dl->bundle);
        break;
      case MP_FAILED:
        FUNC5(dl);
        return;
    }
  } else if (FUNC3(dl->bundle) == PHASE_NETWORK) {
    FUNC9(LogPHASE, "%s: Already in NETWORK phase\n", dl->name);
    FUNC6(dl, DATALINK_OPEN);
    FUNC1(dl->bundle);
    (*dl->parent->LayerUp)(dl->parent->object, &dl->physical->link.lcp.fsm);
    return;
  } else {
    dl->bundle->ncp.mp.peer = dl->peer;
    FUNC11(&dl->bundle->ncp, &dl->physical->link);
    FUNC0(dl->bundle, dl->peer.authname);
  }

  if (ccpok) {
    FUNC8(&dl->physical->link.ccp.fsm);
    FUNC7(&dl->physical->link.ccp.fsm);
  }
  FUNC6(dl, DATALINK_OPEN);
  FUNC2(dl->bundle, PHASE_NETWORK);
  (*dl->parent->LayerUp)(dl->parent->object, &dl->physical->link.lcp.fsm);
}