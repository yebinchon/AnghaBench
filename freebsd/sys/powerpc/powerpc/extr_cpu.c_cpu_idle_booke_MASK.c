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
typedef  int /*<<< orphan*/  sbintime_t ;
typedef  int register_t ;

/* Variables and functions */
 int PSL_WE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(sbintime_t sbt)
{
	register_t msr;

	msr = FUNC0();

#ifdef BOOKE_E500
	powerpc_sync();
	mtmsr(msr | PSL_WE);
#endif
}