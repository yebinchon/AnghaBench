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
typedef  int vm_paddr_t ;
struct TYPE_2__ {scalar_t__ mr_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_LAST ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  clock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curcpu ; 
 int /*<<< orphan*/  kmi ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 long realmem ; 
 int /*<<< orphan*/  shutdown_final ; 
 TYPE_1__* sparc64_memreg ; 
 char* sparc64_model ; 
 int sparc64_nmemreg ; 
 int /*<<< orphan*/  sparc64_shutdown_final ; 
 int /*<<< orphan*/  ver ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	vm_paddr_t physsz;
	int i;

	physsz = 0;
	for (i = 0; i < sparc64_nmemreg; i++)
		physsz += sparc64_memreg[i].mr_size;
	FUNC4("real memory  = %lu (%lu MB)\n", physsz,
	    physsz / (1024 * 1024));
	realmem = (long)physsz / PAGE_SIZE;

	FUNC7(&kmi);

	FUNC2();
	FUNC8();

	FUNC0(shutdown_final, sparc64_shutdown_final, NULL,
	    SHUTDOWN_PRI_LAST);

	FUNC4("avail memory = %lu (%lu MB)\n", FUNC6() * PAGE_SIZE,
	    FUNC6() / ((1024 * 1024) / PAGE_SIZE));

	if (bootverbose)
		FUNC4("machine: %s\n", sparc64_model);

	FUNC3(FUNC5(ver), FUNC1(clock), curcpu);
}