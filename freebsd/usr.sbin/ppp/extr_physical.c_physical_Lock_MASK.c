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
struct TYPE_4__ {char* full; int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct physical {scalar_t__ type; TYPE_2__ name; TYPE_1__ link; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogPHASE ; 
 scalar_t__ PHYS_DIRECT ; 
 int UU_LOCK_INUSE ; 
 int UU_LOCK_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct physical *p)
{
  int res;

  if (*p->name.full == '/' && p->type != PHYS_DIRECT &&
      (res = FUNC0(p->name.base)) != UU_LOCK_OK) {
    if (res == UU_LOCK_INUSE)
      FUNC1(LogPHASE, "%s: %s is in use\n", p->link.name, p->name.full);
    else
      FUNC1(LogPHASE, "%s: %s is in use: uu_lock: %s\n",
                 p->link.name, p->name.full, FUNC2(res));
    return 0;
  }

  return 1;
}