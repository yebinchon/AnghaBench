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
struct node_info {struct node_info* next; scalar_t__ signal; int /*<<< orphan*/  seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct node_info*) ; 
 unsigned long FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 struct node_info* nodes ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long sig_reset ; 

void FUNC5(struct timeval* tv) {
	unsigned long elapsed  = 0;
	struct timeval now;
	int need_refresh = 0;
	unsigned long min_wait = 0;
	unsigned long will_wait;

	will_wait = tv->tv_sec*1000+tv->tv_usec/1000;
	min_wait = will_wait;

	struct node_info* node = nodes;

	if (FUNC3(&now, NULL) == -1)
		FUNC0(1, "gettimeofday()");

	while(node) {
		if (node->signal) {
			elapsed = FUNC2(&now, &node->seen);

			// node is dead...
			if (elapsed >= sig_reset) {
				node->signal = 0;
				FUNC1(node);
				need_refresh = 1;
			}

			// need to check soon possibly...
			else {
				unsigned long left;

				left = sig_reset - elapsed;
				if (left < min_wait)
					left = min_wait;
			}
		}	
		node = node->next;
	}

	if (need_refresh)
		FUNC4();

	// need to sleep for less...
	if (min_wait < will_wait) {
		tv->tv_sec = min_wait/1000;
		tv->tv_usec = (min_wait - tv->tv_sec*1000)*1000;
	}
}