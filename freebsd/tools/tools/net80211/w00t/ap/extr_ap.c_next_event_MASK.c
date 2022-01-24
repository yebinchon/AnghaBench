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
struct params {int bint; int rx; int tap; int /*<<< orphan*/  plast; scalar_t__ packet_try; int /*<<< orphan*/  blast; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct params*) ; 
 int /*<<< orphan*/  FUNC7 (struct params*) ; 
 scalar_t__ FUNC8 (struct params*) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC10 (struct params*) ; 

void FUNC11(struct params *p)
{
	struct timeval to, now;
	int el;
	int max;
	fd_set fds;
	int rtr = 3*1000;

	/* figure out select timeout */
	if (FUNC5(&now, NULL) == -1)
		FUNC4(1, "gettimeofday()");

	/* check beacon timeout */
	el = FUNC3(&p->blast, &now);
	if (el >= p->bint) {
		FUNC10(p);
		el = 0;
	}
	el = p->bint - el;
	to.tv_sec = el/1000/1000;
	to.tv_usec = el - to.tv_sec*1000*1000;

	/* check tx timeout */
	if (p->packet_try) {
		el = FUNC3(&p->plast, &now);
		if (el >= rtr) {
			/* check if we gotta retransmit more */
			if (FUNC8(p)) {
				el = 0;
			}
			else
				el = -1;
		}

		/* gotta retransmit in future */
		if (el != -1) {
			el = rtr - el;
			if ((to.tv_sec*1000*1000 + to.tv_usec) > el) {
				to.tv_sec = el/1000/1000;
				to.tv_usec = el - to.tv_sec*1000*1000;
			}
		}
	}

	/* select */
	FUNC2(&fds);
	FUNC1(p->rx, &fds);
	FUNC1(p->tap, &fds);
	max = p->rx > p->tap ? p->rx : p->tap;
	if (FUNC9(max+1, &fds, NULL, NULL, &to) == -1)
		FUNC4(1, "select()");

	if (FUNC0(p->tap, &fds))
		FUNC6(p);
	if (FUNC0(p->rx, &fds))
		FUNC7(p);
}