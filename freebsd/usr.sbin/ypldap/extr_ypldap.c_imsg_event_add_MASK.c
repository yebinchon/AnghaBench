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
struct TYPE_3__ {scalar_t__ queued; } ;
struct TYPE_4__ {int /*<<< orphan*/  fd; TYPE_1__ w; } ;
struct imsgev {int /*<<< orphan*/  ev; int /*<<< orphan*/  data; int /*<<< orphan*/ * handler; int /*<<< orphan*/  events; TYPE_2__ ibuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void
FUNC4(struct imsgev *iev)
{
	if (iev->handler == NULL) {
		FUNC3(&iev->ibuf);
		return;
	}

	iev->events = EV_READ;
	if (iev->ibuf.w.queued)
		iev->events |= EV_WRITE;

	FUNC1(&iev->ev);
	FUNC2(&iev->ev, iev->ibuf.fd, iev->events, iev->handler, iev->data);
	FUNC0(&iev->ev, NULL);
}