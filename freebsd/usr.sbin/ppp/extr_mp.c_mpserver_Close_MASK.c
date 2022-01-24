#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sun_path; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dl; } ;
struct mpserver {int fd; TYPE_2__ socket; TYPE_1__ send; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct mpserver *s)
{
  if (s->send.dl != NULL) {
    FUNC1(s->send.dl, s->fd, &s->socket);
    s->send.dl = NULL;
    s->fd = -1;
  } else if (s->fd >= 0) {
    FUNC2(s->fd);
    if (FUNC0(s->socket.sun_path) == -1)
      FUNC3(LogERROR, "%s: Failed to remove: %s\n", s->socket.sun_path,
                FUNC5(errno));
    FUNC4(&s->socket, '\0', sizeof s->socket);
    s->fd = -1;
  }
}