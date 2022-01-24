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
struct datalink {struct datalink* next; } ;
struct TYPE_5__ {scalar_t__ sessiontime; } ;
struct TYPE_6__ {int all; int open; } ;
struct TYPE_4__ {int /*<<< orphan*/  mp; } ;
struct bundle {TYPE_2__ radius; TYPE_3__ phys_type; TYPE_1__ ncp; struct datalink* links; } ;

/* Variables and functions */
 int PHYS_DDIAL ; 
 int PHYS_DEDICATED ; 
 int /*<<< orphan*/  FUNC0 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle*,struct datalink*) ; 
 int /*<<< orphan*/  FUNC2 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct bundle *bundle)
{
  struct datalink *dl;

  bundle->phys_type.all = bundle->phys_type.open = 0;
  for (dl = bundle->links; dl; dl = dl->next)
    FUNC1(bundle, dl);

  FUNC0(bundle);
  FUNC4(&bundle->ncp.mp);

  if ((bundle->phys_type.open & (PHYS_DEDICATED|PHYS_DDIAL))
      == bundle->phys_type.open) {
#ifndef NORADIUS
    if (bundle->radius.sessiontime)
      FUNC3(bundle);
#endif
    FUNC2(bundle);
   }
}