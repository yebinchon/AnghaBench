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
struct mbuf {int dummy; } ;
struct link {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  fsm; } ;
struct TYPE_4__ {TYPE_1__ ipcp; } ;
struct bundle {TYPE_2__ ncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogIPCP ; 
 int /*<<< orphan*/  MB_IPCPIN ; 
 scalar_t__ PHASE_NETWORK ; 
 scalar_t__ FUNC0 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 

extern struct mbuf *
FUNC6(struct bundle *bundle, struct link *l, struct mbuf *bp)
{
  /* Got PROTO_IPCP from link */
  FUNC5(bp, MB_IPCPIN);
  if (FUNC0(bundle) == PHASE_NETWORK)
    FUNC2(&bundle->ncp.ipcp.fsm, bp);
  else {
    if (FUNC0(bundle) < PHASE_NETWORK)
      FUNC3(LogIPCP, "%s: Error: Unexpected IPCP in phase %s (ignored)\n",
                 l->name, FUNC1(bundle));
    FUNC4(bp);
  }
  return NULL;
}