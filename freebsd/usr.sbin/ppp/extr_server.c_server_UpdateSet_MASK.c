#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct server {int fd; } ;
struct prompt {int /*<<< orphan*/  desc; struct prompt* next; } ;
struct fdescriptor {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogTIMER ; 
 struct server* FUNC1 (struct fdescriptor*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct prompt* FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e, int *n)
{
  struct server *s = FUNC1(d);
  struct prompt *p;
  int sets;

  sets = 0;
  if (r && s->fd >= 0) {
    if (*n < s->fd + 1)
      *n = s->fd + 1;
    FUNC0(s->fd, r);
    FUNC3(LogTIMER, "server: fdset(r) %d\n", s->fd);
    sets++;
  }

  for (p = FUNC4(); p; p = p->next)
    sets += FUNC2(&p->desc, r, w, e, n);

  return sets;
}