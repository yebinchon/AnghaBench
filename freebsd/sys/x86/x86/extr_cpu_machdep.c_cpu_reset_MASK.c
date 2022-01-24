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
typedef  int u_int ;
struct monitorbuf {int /*<<< orphan*/  stop_state; } ;
typedef  int /*<<< orphan*/  cpuset_t ;
struct TYPE_2__ {struct monitorbuf pc_monitorbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  MONITOR_STOPSTATE_RUNNING ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_reset_proxy ; 
 int cpu_reset_proxy_active ; 
 scalar_t__ cpu_reset_proxyid ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  cpustop_restartfunc ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ smp_started ; 
 int /*<<< orphan*/  started_cpus ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stopped_cpus ; 

void
FUNC12(void)
{
#ifdef SMP
	struct monitorbuf *mb;
	cpuset_t map;
	u_int cnt;

	if (smp_started) {
		map = all_cpus;
		CPU_CLR(PCPU_GET(cpuid), &map);
		CPU_NAND(&map, &stopped_cpus);
		if (!CPU_EMPTY(&map)) {
			printf("cpu_reset: Stopping other CPUs\n");
			stop_cpus(map);
		}

		if (PCPU_GET(cpuid) != 0) {
			cpu_reset_proxyid = PCPU_GET(cpuid);
			cpustop_restartfunc = cpu_reset_proxy;
			cpu_reset_proxy_active = 0;
			printf("cpu_reset: Restarting BSP\n");

			/* Restart CPU #0. */
			CPU_SETOF(0, &started_cpus);
			mb = &pcpu_find(0)->pc_monitorbuf;
			atomic_store_int(&mb->stop_state,
			    MONITOR_STOPSTATE_RUNNING);

			cnt = 0;
			while (cpu_reset_proxy_active == 0 && cnt < 10000000) {
				ia32_pause();
				cnt++;	/* Wait for BSP to announce restart */
			}
			if (cpu_reset_proxy_active == 0) {
				printf("cpu_reset: Failed to restart BSP\n");
			} else {
				cpu_reset_proxy_active = 2;
				while (1)
					ia32_pause();
				/* NOTREACHED */
			}
		}

		DELAY(1000000);
	}
#endif
	FUNC7();
	/* NOTREACHED */
}