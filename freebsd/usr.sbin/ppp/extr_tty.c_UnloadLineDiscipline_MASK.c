#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int fd; int /*<<< orphan*/  disc; scalar_t__ speed; } ;
struct ttydevice {int cs; char* hook; TYPE_2__ dev; TYPE_1__ real; } ;
struct TYPE_6__ {scalar_t__ name; } ;
struct physical {int fd; TYPE_3__ link; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  PHYSICAL_NOFORCE ; 
 int /*<<< orphan*/  TIOCSETD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ttydevice* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ttydevice*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct physical*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct physical*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct physical *p)
{
  struct ttydevice *dev = FUNC2(p->handler);

  if (FUNC3(dev)) {
    if (!FUNC5(p, dev->real.speed))
      FUNC4(LogWARN, "Couldn't reset tty speed to %d\n", dev->real.speed);
    dev->real.speed = 0;
    FUNC1(p->fd);
    p->fd = dev->real.fd;
    dev->real.fd = -1;
    FUNC1(dev->cs);
    dev->cs = -1;
    *dev->hook = '\0';
    if (FUNC0(p->fd, TIOCSETD, &dev->real.disc) == 0) {
      FUNC6(p, dev->dev.name, PHYSICAL_NOFORCE);
      FUNC4(LogPHASE, "%s: Unloaded netgraph tty line discipline\n",
                 p->link.name);
    } else
      FUNC4(LogWARN, "%s: Failed to unload netgraph tty line discipline\n",
                 p->link.name);
  }
}