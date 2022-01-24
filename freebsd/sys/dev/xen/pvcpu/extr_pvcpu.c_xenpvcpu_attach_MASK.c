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
struct pcpu {int /*<<< orphan*/  pc_device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct pcpu* FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct pcpu *pc;
	int cpu;

	cpu = FUNC0(dev);
	pc = FUNC1(cpu);
	pc->pc_device = dev;
	return (0);
}