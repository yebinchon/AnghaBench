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
struct ttyent {int /*<<< orphan*/  ty_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct physical {TYPE_1__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct ttyent* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct physical *p)
{
  struct ttyent *ttyp;
  int slot;

  FUNC2();
  for (slot = 1; (ttyp = FUNC1()); ++slot)
    if (!FUNC3(ttyp->ty_name, p->name.base)) {
      FUNC0();
      return slot;
    }

  FUNC0();
  return -1;
}