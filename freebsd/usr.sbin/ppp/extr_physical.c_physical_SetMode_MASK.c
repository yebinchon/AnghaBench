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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct physical {int type; TYPE_1__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int PHYS_BACKGROUND ; 
 int PHYS_DEDICATED ; 
 int PHYS_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int
FUNC2(struct physical *p, int mode)
{
  if ((p->type & (PHYS_DIRECT|PHYS_DEDICATED) ||
       mode & (PHYS_DIRECT|PHYS_DEDICATED)) &&
      (!(p->type & PHYS_DIRECT) || !(mode & PHYS_BACKGROUND))) {
    /* Note:  The -direct -> -background is for callback ! */
    FUNC0(LogWARN, "%s: Cannot change mode %s to %s\n", p->link.name,
               FUNC1(p->type), FUNC1(mode));
    return 0;
  }
  p->type = mode;
  return 1;
}