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
struct physical {TYPE_1__ link; TYPE_2__* handler; } ;
struct execdevice {scalar_t__ fd_out; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int (* removefromset ) (struct physical*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogTIMER ; 
 struct execdevice* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct physical*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct physical *p, fd_set *r, fd_set *w, fd_set *e)
{
  struct execdevice *dev = FUNC2(p->handler);
  int sets;

  p->handler->removefromset = NULL;
  sets = FUNC4(p, r, w, e);
  p->handler->removefromset = exec_RemoveFromSet;

  if (dev->fd_out >= 0) {
    if (w && FUNC1(dev->fd_out, w)) {
      FUNC0(dev->fd_out, w);
      FUNC3(LogTIMER, "%s: fdunset(w) %d\n", p->link.name, dev->fd_out);
      sets++;
    }
    if (e && FUNC1(dev->fd_out, e)) {
      FUNC0(dev->fd_out, e);
      FUNC3(LogTIMER, "%s: fdunset(e) %d\n", p->link.name, dev->fd_out);
      sets++;
    }
  }

  return sets;
}