#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* dl; } ;
struct mpserver {int fd; TYPE_2__ send; int /*<<< orphan*/  socket; } ;
struct fdescriptor {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_7__ {TYPE_1__* physical; } ;
struct TYPE_5__ {int /*<<< orphan*/  out; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogTIMER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mpserver* FUNC3 (struct fdescriptor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e,
                   int *n)
{
  struct mpserver *s = FUNC3(d);
  int result;

  result = 0;
  if (s->send.dl != NULL) {
    /* We've connect()ed */
    if (!FUNC4(&s->send.dl->physical->link) &&
        !s->send.dl->physical->out) {
      /* Only send if we've transmitted all our data (i.e. the ConfigAck) */
      result -= FUNC2(s->send.dl, r, w, e);
      FUNC1(s->send.dl, s->fd, &s->socket);
      s->send.dl = NULL;
      s->fd = -1;
    } else
      /* Never read from a datalink that's on death row ! */
      result -= FUNC2(s->send.dl, r, NULL, NULL);
  } else if (r && s->fd >= 0) {
    if (*n < s->fd + 1)
      *n = s->fd + 1;
    FUNC0(s->fd, r);
    FUNC5(LogTIMER, "mp: fdset(r) %d\n", s->fd);
    result++;
  }
  return result;
}