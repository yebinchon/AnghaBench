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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int volatile*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int volatile mp_ncpus ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcpm_dev ; 

__attribute__((used)) static void
FUNC4(platform_t plat, u_long tb, int ap)
{
	static volatile bool tb_ready;
	static volatile int cpu_done;

	if (ap) {
		/* APs.  Hold off until we get a stable timebase. */
		while (!tb_ready)
			FUNC1();
		FUNC3(tb);
		FUNC0(&cpu_done, 1);
		while (cpu_done < mp_ncpus)
			FUNC1();
	} else {
		/* BSP */
		FUNC2(rcpm_dev, true);
		tb_ready = true;
		FUNC3(tb);
		FUNC0(&cpu_done, 1);
		while (cpu_done < mp_ncpus)
			FUNC1();
		FUNC2(rcpm_dev, false);
	}
}