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
struct ttydevice {int /*<<< orphan*/  mbits; int /*<<< orphan*/  Timer; } ;
struct termios {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct physical {scalar_t__ fd; TYPE_1__ link; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0 ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ FUNC0 (struct ttydevice*) ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TIOCM_DTR ; 
 int FUNC1 (struct termios*,int /*<<< orphan*/ ) ; 
 struct ttydevice* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct termios*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct physical *p)
{
  struct ttydevice *dev = FUNC2(p->handler);

  if (p->fd >= 0) {
    FUNC6(&dev->Timer);
    dev->mbits &= ~TIOCM_DTR;	/* XXX: Hmm, what's this supposed to do ? */
    if (FUNC0(dev)) {
      struct termios tio;

      FUNC4(p->fd, &tio);
      if (FUNC1(&tio, B0) == -1 || FUNC5(p->fd, TCSANOW, &tio) == -1)
        FUNC3(LogWARN, "%s: Unable to set physical to speed 0\n",
                   p->link.name);
    }
  }
}