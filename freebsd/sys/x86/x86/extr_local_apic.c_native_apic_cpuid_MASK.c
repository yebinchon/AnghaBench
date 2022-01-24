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

/* Variables and functions */
 size_t* apic_cpuids ; 

__attribute__((used)) static u_int
FUNC0(u_int apic_id)
{
#ifdef SMP
	return apic_cpuids[apic_id];
#else
	return 0;
#endif
}