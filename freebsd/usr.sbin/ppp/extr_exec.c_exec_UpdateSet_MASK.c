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
struct execdevice {int fd_out; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogTIMER ; 
 struct physical* FUNC1 (struct fdescriptor*) ; 
 struct execdevice* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct fdescriptor*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e, int *n)
{
  struct physical *p = FUNC1(d);
  struct execdevice *dev = FUNC2(p->handler);
  int result = 0;

  if (w && dev->fd_out >= 0) {
    FUNC0(dev->fd_out, w);
    FUNC3(LogTIMER, "%s: fdset(w) %d\n", p->link.name, dev->fd_out);
    result++;
    w = NULL;
  }

  if (e && dev->fd_out >= 0) {
    FUNC0(dev->fd_out, e);
    FUNC3(LogTIMER, "%s: fdset(e) %d\n", p->link.name, dev->fd_out);
    result++;
  }

  if (result && *n <= dev->fd_out)
    *n = dev->fd_out + 1;

  return result + FUNC4(d, r, w, e, n, 0);
}