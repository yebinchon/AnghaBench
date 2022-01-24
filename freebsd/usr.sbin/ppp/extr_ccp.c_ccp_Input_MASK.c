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
struct mbuf {int dummy; } ;
struct TYPE_6__ {TYPE_1__* link; } ;
struct TYPE_5__ {TYPE_3__ fsm; } ;
struct link {TYPE_2__ ccp; } ;
struct bundle {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogCCP ; 
 int /*<<< orphan*/  MB_CCPIN ; 
 scalar_t__ PHASE_NETWORK ; 
 scalar_t__ FUNC0 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 

extern struct mbuf *
FUNC6(struct bundle *bundle, struct link *l, struct mbuf *bp)
{
  /* Got PROTO_CCP from link */
  FUNC5(bp, MB_CCPIN);
  if (FUNC0(bundle) == PHASE_NETWORK)
    FUNC2(&l->ccp.fsm, bp);
  else {
    if (FUNC0(bundle) < PHASE_NETWORK)
      FUNC3(LogCCP, "%s: Error: Unexpected CCP in phase %s (ignored)\n",
                 l->ccp.fsm.link->name, FUNC1(bundle));
    FUNC4(bp);
  }
  return NULL;
}