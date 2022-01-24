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
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_5__ {int load; } ;
struct TYPE_4__ {TYPE_2__ timer; int /*<<< orphan*/  fd; int /*<<< orphan*/  rad; } ;
struct radius {TYPE_1__ cx; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogRADIUS ; 
 int SECTICKS ; 
 int TICKUNIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (struct radius*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(struct radius *r, int sel)
{
  struct timeval tv;
  int got;

  FUNC5(&r->cx.timer);
  if ((got = FUNC2(r->cx.rad, sel, &r->cx.fd, &tv)) == 0) {
    FUNC1(FUNC0(LogRADIUS) ? LogRADIUS : LogPHASE,
	       "Radius: Request re-sent\n");
    r->cx.timer.load = tv.tv_usec / TICKUNIT + tv.tv_sec * SECTICKS;
    FUNC4(&r->cx.timer);
    return;
  }

  FUNC3(r, got);
}