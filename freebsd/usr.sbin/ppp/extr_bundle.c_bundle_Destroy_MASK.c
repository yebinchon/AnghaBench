#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct datalink {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  fd; } ;
struct TYPE_9__ {int /*<<< orphan*/  mp; } ;
struct TYPE_7__ {int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  timer; } ;
struct bundle {int /*<<< orphan*/ * iface; TYPE_3__ dev; TYPE_4__ ncp; struct datalink* links; int /*<<< orphan*/  radius; TYPE_2__ choked; TYPE_1__ idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_ERRDEAD ; 
 int /*<<< orphan*/  IFACE_CLEAR_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct datalink* FUNC4 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(struct bundle *bundle)
{
  struct datalink *dl;

  /*
   * Clean up the interface.  We don't really need to do the timer_Stop()s,
   * mp_Down(), iface_Clear() and bundle_DownInterface() unless we're getting
   * out under exceptional conditions such as a descriptor exception.
   */
  FUNC10(&bundle->idle.timer);
  FUNC10(&bundle->choked.timer);
  FUNC7(&bundle->ncp.mp);
  FUNC5(bundle->iface, &bundle->ncp, 0, IFACE_CLEAR_ALL);
  FUNC0(bundle);

#ifndef NORADIUS
  /* Tell the radius server the bad news */
  FUNC9(&bundle->radius);
#endif

  /* Again, these are all DATALINK_CLOSED unless we're abending */
  dl = bundle->links;
  while (dl)
    dl = FUNC4(dl);

  FUNC8(&bundle->ncp);

  FUNC3(bundle->dev.fd);
  FUNC2(bundle);

  /* In case we never made PHASE_NETWORK */
  FUNC1(bundle, EX_ERRDEAD);

  FUNC6(bundle->iface);
  bundle->iface = NULL;
}