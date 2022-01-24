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
struct timeval {int tv_sec; int tv_usec; } ;
struct params {scalar_t__ state; int data_try; int rx; int s; int /*<<< orphan*/  last; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_START ; 
 scalar_t__ S_WAIT_ACK ; 
 scalar_t__ S_WAIT_BUDDY ; 
 int FUNC3 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct params*) ; 
 int /*<<< orphan*/  FUNC7 (struct params*) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC9 (struct params*) ; 

void FUNC10(struct params *p)
{
	struct timeval tv;
	struct timeval *to = NULL;
	fd_set fds;
	int max;
	int tout_ack = 10*1000;
	int tout_buddy = 2*1000*1000;
	int tout = (p->state == S_WAIT_BUDDY) ? tout_buddy : tout_ack;

	if (p->state == S_WAIT_ACK || p->state == S_WAIT_BUDDY) {
		int el;

		/* check timeout */
		if (FUNC5(&tv, NULL) == -1)
			FUNC4(1, "gettimeofday()");
	
		el = FUNC3(&p->last, &tv);

		/* timeout */
		if (el >= tout) {
			if (p->data_try > 3) {
				p->state = S_START;
				return;
			} else {
				FUNC9(p);
				el = 0;
			}
		}
		el = tout - el;
		tv.tv_sec = el/1000/1000;
		tv.tv_usec = el - tv.tv_sec*1000*1000;
		to = &tv;
	}

	FUNC2(&fds);
	FUNC1(p->rx, &fds);
	FUNC1(p->s, &fds);
	max = (p->rx > p->s) ? p->rx : p->s;

	if (FUNC8(max+1, &fds, NULL, NULL, to) == -1)
		FUNC4(1, "select()");

	if (FUNC0(p->rx, &fds))
		FUNC7(p);
	if (FUNC0(p->s, &fds))
		FUNC6(p);
}