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
struct TYPE_4__ {char* cputype; int number; TYPE_1__* ents; int /*<<< orphan*/  (* explain ) (char*) ;} ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__ the_cpu ; 

__attribute__((used)) static void
FUNC2(void)
{
	int i;
	FUNC0("For CPU's of type %s the following expressions are available:\n",the_cpu.cputype);
	FUNC0("-------------------------------------------------------------\n");
	for(i=0; i<the_cpu.number; i++){
		FUNC0("For -e %s ", the_cpu.ents[i].name);
		(*the_cpu.explain)(the_cpu.ents[i].name);
		FUNC0("----------------------------\n");
	}
}