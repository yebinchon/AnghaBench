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
typedef  int u_int ;
struct xen_intr_pcpu_data {int /*<<< orphan*/ * evtchn_intrcnt; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct xen_intr_pcpu_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAXCOMLEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  xen_intr_pcpu ; 

__attribute__((used)) static void
FUNC3(u_int cpu)
{
	char buf[MAXCOMLEN + 1];
	struct xen_intr_pcpu_data *pcpu;

	pcpu = FUNC0(cpu, xen_intr_pcpu);
	if (pcpu->evtchn_intrcnt != NULL)
		return;

	FUNC2(buf, sizeof(buf), "cpu%d:xen", cpu);
	FUNC1(buf, &pcpu->evtchn_intrcnt);
}