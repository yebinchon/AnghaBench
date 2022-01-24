#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pmc_binding {int /*<<< orphan*/  pb_cpu; scalar_t__ pb_bound; } ;
struct TYPE_6__ {int /*<<< orphan*/  td_oncpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  BND ; 
 int /*<<< orphan*/  CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct pmc_binding *pb)
{
	FUNC1(CPU,BND,2, "restore-cpu curcpu=%d restore=%d",
	    curthread->td_oncpu, pb->pb_cpu);
	FUNC4(curthread);
	if (pb->pb_bound)
		FUNC2(curthread, pb->pb_cpu);
	else
		FUNC3(curthread);
	FUNC5(curthread);
	FUNC0(CPU,BND,2, "restore-cpu done");
}