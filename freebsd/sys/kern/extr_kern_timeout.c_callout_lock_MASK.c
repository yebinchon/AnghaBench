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
struct callout_cpu {int dummy; } ;
struct callout {int c_cpu; } ;

/* Variables and functions */
 struct callout_cpu* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct callout_cpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct callout_cpu*) ; 
 int CPUBLOCK ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct callout_cpu *
FUNC4(struct callout *c)
{
	struct callout_cpu *cc;
	int cpu;

	for (;;) {
		cpu = c->c_cpu;
#ifdef SMP
		if (cpu == CPUBLOCK) {
			while (c->c_cpu == CPUBLOCK)
				cpu_spinwait();
			continue;
		}
#endif
		cc = FUNC0(cpu);
		FUNC1(cc);
		if (cpu == c->c_cpu)
			break;
		FUNC2(cc);
	}
	return (cc);
}