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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct physical {TYPE_1__ name; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogPHASE ; 
 int UU_LOCK_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct physical*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(struct physical *p, pid_t newpid)
{
  if (FUNC2(p)) {
    int res;

    if ((res = FUNC0(p->name.base, newpid)) != UU_LOCK_OK)
      FUNC1(LogPHASE, "uu_lock_txfr: %s\n", FUNC3(res));
  }
}