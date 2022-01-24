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
struct TYPE_2__ {struct TYPE_2__* rmq_prev; struct TYPE_2__* rmq_next; } ;
struct pcpu {int pc_cpuid; TYPE_1__ pc_rm_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAXCPU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcpu*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct pcpu*,int,size_t) ; 
 int /*<<< orphan*/  cpuhead ; 
 struct pcpu** cpuid_to_pcpu ; 
 int /*<<< orphan*/  pc_allcpu ; 

void
FUNC4(struct pcpu *pcpu, int cpuid, size_t size)
{

	FUNC2(pcpu, size);
	FUNC0(cpuid >= 0 && cpuid < MAXCPU,
	    ("pcpu_init: invalid cpuid %d", cpuid));
	pcpu->pc_cpuid = cpuid;
	cpuid_to_pcpu[cpuid] = pcpu;
	FUNC1(&cpuhead, pcpu, pc_allcpu);
	FUNC3(pcpu, cpuid, size);
	pcpu->pc_rm_queue.rmq_next = &pcpu->pc_rm_queue;
	pcpu->pc_rm_queue.rmq_prev = &pcpu->pc_rm_queue;
}