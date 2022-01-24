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
struct physical {int fd; TYPE_1__ link; scalar_t__ out; } ;
struct fdescriptor {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogTIMER ; 
 struct physical* FUNC1 (struct fdescriptor*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e,
                     int *n, int force)
{
  struct physical *p = FUNC1(d);
  int sets;

  sets = 0;
  if (p->fd >= 0) {
    if (r) {
      FUNC0(p->fd, r);
      FUNC3(LogTIMER, "%s: fdset(r) %d\n", p->link.name, p->fd);
      sets++;
    }
    if (e) {
      FUNC0(p->fd, e);
      FUNC3(LogTIMER, "%s: fdset(e) %d\n", p->link.name, p->fd);
      sets++;
    }
    if (w && (force || FUNC2(&p->link) || p->out)) {
      FUNC0(p->fd, w);
      FUNC3(LogTIMER, "%s: fdset(w) %d\n", p->link.name, p->fd);
      sets++;
    }
    if (sets && *n < p->fd + 1)
      *n = p->fd + 1;
  }

  return sets;
}