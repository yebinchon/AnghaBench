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
typedef  size_t u_int ;
struct sysctl_netisr_workstream {scalar_t__ snws_wsid; int /*<<< orphan*/  snws_cpu; } ;
struct sysctl_netisr_work {scalar_t__ snw_wsid; int /*<<< orphan*/  snw_handled; int /*<<< orphan*/  snw_queued; int /*<<< orphan*/  snw_qdrops; int /*<<< orphan*/  snw_hybrid_dispatched; int /*<<< orphan*/  snw_dispatched; int /*<<< orphan*/  snw_watermark; int /*<<< orphan*/  snw_len; int /*<<< orphan*/  snw_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sysctl_netisr_work* work_array ; 
 size_t work_array_len ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(struct sysctl_netisr_workstream *snwsp)
{
	struct sysctl_netisr_work *snwp;
	u_int i;

	FUNC5("work");
	for (i = 0; i < work_array_len; i++) {
		snwp = &work_array[i];
		if (snwp->snw_wsid != snwsp->snws_wsid)
			continue;
		FUNC4("work");
		FUNC3("{t:workstream/%4u} ", snwsp->snws_wsid);
		FUNC3("{t:cpu/%3u} ", snwsp->snws_cpu);
		FUNC3("{P:  }");
		FUNC3("{t:name/%-6s}", FUNC0(snwp->snw_proto));
		FUNC3(" {t:length/%5u}", snwp->snw_len);
		FUNC3(" {t:watermark/%5u}", snwp->snw_watermark);
		FUNC3(" {t:dispatched/%8ju}", snwp->snw_dispatched);
		FUNC3(" {t:hybrid-dispatched/%8ju}",
		    snwp->snw_hybrid_dispatched);
		FUNC3(" {t:queue-drops/%8ju}", snwp->snw_qdrops);
		FUNC3(" {t:queued/%8ju}", snwp->snw_queued);
		FUNC3(" {t:handled/%8ju}", snwp->snw_handled);
		FUNC3("\n");
		FUNC1("work");
	}
	FUNC2("work");
}