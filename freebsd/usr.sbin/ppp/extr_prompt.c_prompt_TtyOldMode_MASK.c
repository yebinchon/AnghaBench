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
struct prompt {scalar_t__ Term; int /*<<< orphan*/  oldtio; int /*<<< orphan*/  fd_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ stdout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct prompt *p)
{
  int stat;

  stat = FUNC0(p->fd_in, F_GETFL, 0);
  if (stat > 0) {
    stat &= ~O_NONBLOCK;
    FUNC0(p->fd_in, F_SETFL, stat);
  }

  if (p->Term == stdout)
    FUNC1(p->fd_in, TCSADRAIN, &p->oldtio);
}