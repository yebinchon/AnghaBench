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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct physical {TYPE_1__ link; TYPE_2__* dl; int /*<<< orphan*/  handler; } ;
struct ngdevice {int /*<<< orphan*/  cs; } ;
struct fdescriptor {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int state; } ;

/* Variables and functions */
#define  DATALINK_DIAL 129 
#define  DATALINK_LOGIN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogTIMER ; 
 struct physical* FUNC1 (struct fdescriptor*) ; 
 struct ngdevice* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fdescriptor*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e, int *n)
{
  struct physical *p = FUNC1(d);
  struct ngdevice *dev = FUNC2(p->handler);
  int result;

  switch (p->dl->state) {
    case DATALINK_DIAL:
    case DATALINK_LOGIN:
      if (r) {
        FUNC0(dev->cs, r);
        FUNC3(LogTIMER, "%s(ctrl): fdset(r) %d\n", p->link.name, dev->cs);
        result = 1;
      } else
        result = 0;
      break;

    default:
      result = FUNC4(d, r, w, e, n, 0);
      break;
  }

  return result;
}