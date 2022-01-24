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
struct cfg_s {int ac; char** av; double _enqueue; int flows; scalar_t__ wfi; scalar_t__* q_wfi; char* fs_config; scalar_t__ dequeue; struct timeval time; int /*<<< orphan*/  name; int /*<<< orphan*/  th_max; int /*<<< orphan*/  th_min; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg_s*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,struct timeval*,struct timeval*) ; 

int
FUNC9(int ac, char *av[])
{
	struct cfg_s c;
	double ll;
	int i;
	char msg[40];

	FUNC2(&c, sizeof(c));
	c.ac = ac;
	c.av = av;
	FUNC5(&c);
	FUNC4(&c.time, NULL);
	FUNC0("th_min %d th_max %d", c.th_min, c.th_max);

	FUNC6(&c);
	{
		struct timeval end;
		FUNC4(&end, NULL);
		FUNC8(&end, &c.time, &c.time);
	}
	ll = c.time.tv_sec*1000000 + c.time.tv_usec;
	ll *= 1000;	/* convert to nanoseconds */
	ll /= c._enqueue;
	FUNC7(msg, "1::%d", c.flows);
	for (i = 0; i < c.flows; i++) {
		if (c.wfi < c.q_wfi[i])
			c.wfi = c.q_wfi[i];
	}
	FUNC0("sched=%-12s\ttime=%d.%03d sec (%.0f nsec) enq %lu %lu deq\n"
	   "\twfi=%.02f\tflow=%-16s",
	   c.name, (int)c.time.tv_sec, (int)c.time.tv_usec / 1000, ll,
	   (unsigned long)c._enqueue, (unsigned long)c.dequeue, c.wfi,
	   c.fs_config ? c.fs_config : msg);
	FUNC3(&c);
	FUNC1(1, "done ac %d av %p", ac, av);
	for (i=0; i < ac; i++)
		FUNC1(1, "arg %d %s", i, av[i]);
	return 0;
}