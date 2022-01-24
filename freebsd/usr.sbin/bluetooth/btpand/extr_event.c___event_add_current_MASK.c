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
struct event {int flags; } ;

/* Variables and functions */
 int EV_CURRENT ; 
 int EV_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC2(struct event *ev)
{
	FUNC1((ev->flags & (EV_PENDING|EV_CURRENT)) == 0);

	FUNC0(&current, ev, next);
	ev->flags |= EV_CURRENT;
}