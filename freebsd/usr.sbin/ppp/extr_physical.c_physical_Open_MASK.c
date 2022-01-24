#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* full; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {char* devlist; int ndev; } ;
struct physical {int fd; scalar_t__ type; TYPE_3__ name; TYPE_2__ link; int /*<<< orphan*/ * handler; TYPE_1__ cfg; } ;
struct TYPE_8__ {int /*<<< orphan*/ * (* create ) (struct physical*) ;} ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogWARN ; 
 unsigned int NDEVICES ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PHYSICAL_NOFORCE ; 
 scalar_t__ PHYS_DIRECT ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* devices ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct physical*) ; 
 scalar_t__ FUNC4 (struct physical*) ; 
 int /*<<< orphan*/  FUNC5 (struct physical*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct physical*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct physical*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (struct physical*) ; 
 int /*<<< orphan*/ * FUNC11 (struct physical*) ; 

int
FUNC12(struct physical *p)
{
  char *dev;
  int devno, wasfd, err;
  unsigned h;

  if (p->fd >= 0)
    FUNC2(LogDEBUG, "%s: Open: Modem is already open!\n", p->link.name);
    /* We're going back into "term" mode */
  else if (p->type == PHYS_DIRECT) {
    FUNC5(p, "");
    p->fd = STDIN_FILENO;
    for (h = 0; h < NDEVICES && p->handler == NULL && p->fd >= 0; h++)
      p->handler = (*devices[h].create)(p);
    FUNC1(STDOUT_FILENO);
    if (p->fd >= 0) {
      if (p->handler == NULL) {
        FUNC6(p, "unknown", PHYSICAL_NOFORCE);
        FUNC2(LogDEBUG, "%s: stdin is unidentified\n", p->link.name);
      }
      FUNC3(p);
    }
  } else {
    dev = p->cfg.devlist;
    devno = 0;
    while (devno < p->cfg.ndev && p->fd < 0) {
      FUNC5(p, dev);
      if (FUNC4(p)) {
        err = 0;

        if (*p->name.full == '/') {
          p->fd = FUNC0(p->name.full, O_RDWR | O_NONBLOCK);
          if (p->fd < 0)
            err = errno;
        }

        wasfd = p->fd;
        for (h = 0; h < NDEVICES && p->handler == NULL; h++)
          if ((p->handler = (*devices[h].create)(p)) == NULL && wasfd != p->fd)
            break;

        if (p->fd < 0) {
          if (h == NDEVICES) {
            if (err)
	      FUNC2(LogWARN, "%s: %s: %s\n", p->link.name, p->name.full,
                         FUNC8(errno));
            else
	      FUNC2(LogWARN, "%s: Device (%s) must begin with a '/',"
                         " a '!' or contain at least one ':'\n", p->link.name,
                         p->name.full);
          }
          FUNC7(p);
        } else
          FUNC3(p);
      }
      dev += FUNC9(dev) + 1;
      devno++;
    }
  }

  return p->fd;
}