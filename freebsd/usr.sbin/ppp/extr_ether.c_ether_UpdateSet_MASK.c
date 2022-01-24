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
struct physical {TYPE_1__ link; int /*<<< orphan*/  handler; } ;
struct fdescriptor {int dummy; } ;
struct etherdevice {scalar_t__ cs; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogTIMER ; 
 struct physical* FUNC1 (struct fdescriptor*) ; 
 struct etherdevice* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (struct fdescriptor*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e, int *n)
{
  struct physical *p = FUNC1(d);
  struct etherdevice *dev = FUNC2(p->handler);
  int result;

  if (r && dev->cs >= 0) {
    FUNC0(dev->cs, r);
    FUNC3(LogTIMER, "%s(ctrl): fdset(r) %d\n", p->link.name, dev->cs);
    result = 1;
  } else
    result = 0;

  result += FUNC4(d, r, w, e, n, 0);

  return result;
}