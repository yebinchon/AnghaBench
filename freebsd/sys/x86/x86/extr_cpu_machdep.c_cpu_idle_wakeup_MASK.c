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
struct monitorbuf {int idle_state; } ;
struct TYPE_2__ {struct monitorbuf pc_monitorbuf; } ;

/* Variables and functions */
#define  STATE_MWAIT 130 
#define  STATE_RUNNING 129 
#define  STATE_SLEEPING 128 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  cpu_idle_apl31_workaround ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int) ; 

int
FUNC4(int cpu)
{
	struct monitorbuf *mb;
	int *state;

	mb = &FUNC3(cpu)->pc_monitorbuf;
	state = &mb->idle_state;
	switch (FUNC0(state)) {
	case STATE_SLEEPING:
		return (0);
	case STATE_MWAIT:
		FUNC1(state, STATE_RUNNING);
		return (cpu_idle_apl31_workaround ? 0 : 1);
	case STATE_RUNNING:
		return (1);
	default:
		FUNC2("bad monitor state");
		return (1);
	}
}