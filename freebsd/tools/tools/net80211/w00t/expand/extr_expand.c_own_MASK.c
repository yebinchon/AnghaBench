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
struct timeval {int tv_sec; int tv_usec; } ;
struct params {scalar_t__ state; scalar_t__ rx; TYPE_1__* q; int /*<<< orphan*/  last; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {scalar_t__ live; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_START ; 
 scalar_t__ S_WAIT_RELAY ; 
 int FUNC3 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct params*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC8 (struct params*) ; 

void FUNC9(struct params *p)
{
	struct timeval tv;
	struct timeval *to = NULL;
	fd_set fds;
	int tout = 10*1000;

	if (p->state == S_WAIT_RELAY) {
		int el;

		/* check timeout */
		if (FUNC5(&tv, NULL) == -1)
			FUNC4(1, "gettimeofday()");
	
		el = FUNC3(&p->last, &tv);

		/* timeout */
		if (el >= tout) {
			if (p->q && p->q->live) {
				FUNC8(p);
				el = 0;
			} else {
				p->state = S_START;
				return;
			}
		}
		el = tout - el;
		tv.tv_sec = el/1000/1000;
		tv.tv_usec = el - tv.tv_sec*1000*1000;
		to = &tv;
	}

	FUNC2(&fds);
	FUNC1(p->rx, &fds);

	if (FUNC7(p->rx+1, &fds, NULL, NULL, to) == -1)
		FUNC4(1, "select()");

	if (FUNC0(p->rx, &fds))
		FUNC6(p);
}