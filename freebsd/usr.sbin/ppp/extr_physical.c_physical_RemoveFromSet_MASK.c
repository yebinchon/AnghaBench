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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct physical {scalar_t__ fd; TYPE_2__ link; TYPE_1__* handler; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_3__ {int (* removefromset ) (struct physical*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogTIMER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct physical*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(struct physical *p, fd_set *r, fd_set *w, fd_set *e)
{
  if (p->handler && p->handler->removefromset)
    return (*p->handler->removefromset)(p, r, w, e);
  else {
    int sets;

    sets = 0;
    if (p->fd >= 0) {
      if (r && FUNC1(p->fd, r)) {
        FUNC0(p->fd, r);
        FUNC2(LogTIMER, "%s: fdunset(r) %d\n", p->link.name, p->fd);
        sets++;
      }
      if (e && FUNC1(p->fd, e)) {
        FUNC0(p->fd, e);
        FUNC2(LogTIMER, "%s: fdunset(e) %d\n", p->link.name, p->fd);
        sets++;
      }
      if (w && FUNC1(p->fd, w)) {
        FUNC0(p->fd, w);
        FUNC2(LogTIMER, "%s: fdunset(w) %d\n", p->link.name, p->fd);
        sets++;
      }
    }

    return sets;
  }
}