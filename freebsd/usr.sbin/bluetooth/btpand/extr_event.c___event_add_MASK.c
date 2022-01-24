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
struct timeval {int dummy; } ;
struct event {int flags; struct timeval timeout; int /*<<< orphan*/  expire; } ;

/* Variables and functions */
 int EV_CURRENT ; 
 int EV_HAS_TIMEOUT ; 
 int EV_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct event*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct timeval const*) ; 

int
FUNC4(struct event *ev, const struct timeval *timeout)
{
	FUNC1((ev->flags & (EV_PENDING|EV_CURRENT)) == 0);

	if (timeout != NULL) {
		FUNC2(&ev->expire, NULL);
		FUNC3(&ev->expire, timeout);
		ev->timeout = *timeout;
		ev->flags |= EV_HAS_TIMEOUT;
	} else
		ev->flags &= ~EV_HAS_TIMEOUT;

	FUNC0(ev);

	return (0);
}