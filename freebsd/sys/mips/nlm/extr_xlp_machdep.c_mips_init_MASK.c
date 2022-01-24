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
struct TYPE_2__ {int /*<<< orphan*/  cache_coherent_dma; } ;

/* Variables and functions */
 int RB_KDB ; 
 int /*<<< orphan*/  TRUE ; 
 int boothowto ; 
 TYPE_1__ cpuinfo ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  physmem ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void)
{
	FUNC0();
	FUNC1(physmem);

	FUNC4();
	cpuinfo.cache_coherent_dma = TRUE;
	FUNC7();
	FUNC5();
	FUNC6();
#ifdef DDB
	kdb_init();
	if (boothowto & RB_KDB) {
		kdb_enter("Boot flags requested debugger", NULL);
	}
#endif
}