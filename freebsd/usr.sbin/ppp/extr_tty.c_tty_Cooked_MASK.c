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
struct ttydevice {int /*<<< orphan*/  ios; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct physical {int /*<<< orphan*/  fd; TYPE_1__ link; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  LogWARN ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct physical*) ; 
 struct ttydevice* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct physical*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct physical*) ; 

__attribute__((used)) static void
FUNC8(struct physical *p)
{
  struct ttydevice *dev = FUNC1(p->handler);
  int oldflag;

  FUNC7(p);	/* In case of emergency close()s */

  FUNC5(p->fd, TCIOFLUSH);

  if (!FUNC4(p) && FUNC6(p->fd, TCSAFLUSH, &dev->ios) == -1)
    FUNC3(LogWARN, "%s: tcsetattr: Unable to restore device settings\n",
               p->link.name);

#ifndef NONETGRAPH
  FUNC0(p);
#endif

  if ((oldflag = FUNC2(p->fd, F_GETFL, 0)) != -1)
    FUNC2(p->fd, F_SETFL, oldflag & ~O_NONBLOCK);
}