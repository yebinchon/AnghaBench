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
struct ttydevice {int /*<<< orphan*/  mbits; } ;
struct termios {int c_cflag; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ rts_cts; } ;
struct physical {scalar_t__ type; scalar_t__ fd; TYPE_2__ link; TYPE_1__ cfg; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int CCTS_OFLOW ; 
 int CLOCAL ; 
 int CRTS_IFLOW ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int HUPCL ; 
 int /*<<< orphan*/  FUNC0 (struct physical*) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogWARN ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct ttydevice*) ; 
 scalar_t__ PHYS_DEDICATED ; 
 scalar_t__ PHYS_DIRECT ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  FUNC2 (struct termios*) ; 
 struct ttydevice* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct physical*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct termios*) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static int
FUNC9(struct physical *p)
{
  struct ttydevice *dev = FUNC3(p->handler);
  struct termios ios;
  int oldflag;

  FUNC5(LogDEBUG, "%s: Entering tty_Raw\n", p->link.name);

  if (p->type != PHYS_DIRECT && p->fd >= 0 && !FUNC1(dev))
    FUNC5(LogDEBUG, "%s: Raw: descriptor = %d, mbits = %x\n",
              p->link.name, p->fd, dev->mbits);

  if (!FUNC6(p)) {
#ifndef NONETGRAPH
    if (!FUNC0(p))
#endif
    {
      FUNC7(p->fd, &ios);
      FUNC2(&ios);
      if (p->cfg.rts_cts)
        ios.c_cflag |= CLOCAL | CCTS_OFLOW | CRTS_IFLOW;
      else
        ios.c_cflag |= CLOCAL;

      if (p->type != PHYS_DEDICATED)
        ios.c_cflag |= HUPCL;

      if (FUNC8(p->fd, TCSANOW, &ios) == -1)
        FUNC5(LogWARN, "%s: tcsetattr: Failed configuring device\n",
                   p->link.name);
    }
  }

  oldflag = FUNC4(p->fd, F_GETFL, 0);
  if (oldflag < 0)
    return 0;
  FUNC4(p->fd, F_SETFL, oldflag | O_NONBLOCK);

  return 1;
}