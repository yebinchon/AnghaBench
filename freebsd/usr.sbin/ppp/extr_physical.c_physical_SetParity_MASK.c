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
struct termios {int c_cflag; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int parity; } ;
struct physical {scalar_t__ fd; TYPE_1__ link; TYPE_2__ cfg; } ;

/* Variables and functions */
 int CSIZE ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  LogWARN ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct termios*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct termios*) ; 

int
FUNC4(struct physical *p, const char *str)
{
  struct termios rstio;
  int val;

  val = FUNC0(str);
  if (val > 0) {
    p->cfg.parity = val;
    if (p->fd >= 0) {
      FUNC2(p->fd, &rstio);
      rstio.c_cflag &= ~(CSIZE | PARODD | PARENB);
      rstio.c_cflag |= val;
      FUNC3(p->fd, TCSADRAIN, &rstio);
    }
    return 0;
  }
  FUNC1(LogWARN, "%s: %s: Invalid parity\n", p->link.name, str);
  return -1;
}