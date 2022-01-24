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
 int /*<<< orphan*/  LogALERT ; 
 scalar_t__ PHYS_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct physical *p)
{
  if (*p->name.full == '/' && p->type != PHYS_DIRECT &&
      FUNC0(p->name.base) == -1)
    FUNC1(LogALERT, "%s: Can't uu_unlock %s\n", p->link.name,
               p->name.base);
}