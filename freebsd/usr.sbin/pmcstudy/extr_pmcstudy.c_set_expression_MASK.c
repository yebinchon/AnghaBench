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
struct TYPE_4__ {int number; char* cputype; TYPE_1__* ents; } ;
struct TYPE_3__ {char* name; scalar_t__ counters_required; int /*<<< orphan*/  thresh; int /*<<< orphan*/  command; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  command ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  expression ; 
 scalar_t__ max_pmc_counters ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ run_all ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 TYPE_2__ the_cpu ; 
 int /*<<< orphan*/  threshold ; 

__attribute__((used)) static int
FUNC3(const char *name)
{
	int found = 0, i;
	for(i=0 ; i< the_cpu.number; i++) {
		if (FUNC2(name, the_cpu.ents[i].name) == 0) {
			found = 1;
			expression = the_cpu.ents[i].func;
			command = the_cpu.ents[i].command;
			threshold = the_cpu.ents[i].thresh;
			if  (the_cpu.ents[i].counters_required > max_pmc_counters) {
				FUNC1("Test %s requires that the CPU have %d counters and this CPU has only %d\n",
				       the_cpu.ents[i].name,
				       the_cpu.ents[i].counters_required, max_pmc_counters);
				FUNC1("Sorry this test can not be run\n");
				if (run_all == 0) {
					FUNC0(-1);
				} else {
					return(-1);
				}
			}
			break;
		}
	}
	if (!found) {
		FUNC1("For CPU type %s we have no expression:%s\n",
		       the_cpu.cputype, name);
		FUNC0(-1);
	}
	return(0);
}