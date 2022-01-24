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
typedef  size_t u_int ;
struct TYPE_2__ {int /*<<< orphan*/  mp; } ;
struct bundle {size_t phase; TYPE_1__ ncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_STAYDOWN ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  MPPE_MasterKeyValid ; 
#define  PHASE_AUTHENTICATE 132 
#define  PHASE_DEAD 131 
#define  PHASE_ESTABLISH 130 
#define  PHASE_NETWORK 129 
#define  PHASE_TERMINATE 128 
 int /*<<< orphan*/ * PhaseNames ; 
 int /*<<< orphan*/  FUNC0 (struct bundle*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct bundle*) ; 

void
FUNC5(struct bundle *bundle, u_int new)
{
  if (new == bundle->phase)
    return;

  if (new <= PHASE_TERMINATE)
    FUNC2(LogPHASE, "bundle: %s\n", PhaseNames[new]);

  switch (new) {
  case PHASE_DEAD:
    bundle->phase = new;
#ifndef NODES
    MPPE_MasterKeyValid = 0;
#endif
    FUNC1();
    break;

  case PHASE_ESTABLISH:
    bundle->phase = new;
    break;

  case PHASE_AUTHENTICATE:
    bundle->phase = new;
    FUNC1();
    break;

  case PHASE_NETWORK:
    if (FUNC4(&bundle->ncp, bundle)) {
      bundle->phase = new;
      FUNC1();
    } else {
      FUNC2(LogPHASE, "bundle: All NCPs are disabled\n");
      FUNC0(bundle, NULL, CLOSE_STAYDOWN);
    }
    break;

  case PHASE_TERMINATE:
    bundle->phase = new;
    FUNC3(&bundle->ncp.mp);
    FUNC1();
    break;
  }
}