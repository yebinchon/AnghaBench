#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct datalink {TYPE_4__* physical; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_10__ {TYPE_1__ peer_ip; } ;
struct TYPE_8__ {TYPE_5__ ipcp; } ;
struct TYPE_7__ {int all; } ;
struct bundle {scalar_t__ phase; TYPE_3__ ncp; TYPE_2__ phys_type; } ;
struct TYPE_9__ {int type; } ;

/* Variables and functions */
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ PHASE_NETWORK ; 
 int PHYS_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC1 (struct datalink*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int
FUNC5(struct bundle *bundle, struct datalink *dl, int mode)
{
  int omode;

  omode = dl->physical->type;
  if (omode == mode)
    return 1;

  if (mode == PHYS_AUTO && !(bundle->phys_type.all & PHYS_AUTO))
    /* First auto link */
    if (bundle->ncp.ipcp.peer_ip.s_addr == INADDR_ANY) {
      FUNC3(LogWARN, "You must `set ifaddr' or `open' before"
                 " changing mode to %s\n", FUNC4(mode));
      return 0;
    }

  if (!FUNC1(dl, mode))
    return 0;

  if (mode == PHYS_AUTO && !(bundle->phys_type.all & PHYS_AUTO) &&
      bundle->phase != PHASE_NETWORK)
    /* First auto link, we need an interface */
    FUNC2(&bundle->ncp.ipcp);

  /* Regenerate phys_type and adjust idle timer */
  FUNC0(bundle);

  return 1;
}