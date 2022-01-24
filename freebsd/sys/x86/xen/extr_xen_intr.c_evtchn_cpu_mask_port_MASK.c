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
typedef  int /*<<< orphan*/  u_int ;
struct xen_intr_pcpu_data {int /*<<< orphan*/  evtchn_enabled; } ;
typedef  int /*<<< orphan*/  evtchn_port_t ;

/* Variables and functions */
 struct xen_intr_pcpu_data* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_intr_pcpu ; 

__attribute__((used)) static inline void
FUNC2(u_int cpu, evtchn_port_t port)
{
	struct xen_intr_pcpu_data *pcpu;

	pcpu = FUNC0(cpu, xen_intr_pcpu);
	FUNC1(port, pcpu->evtchn_enabled);
}