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

/* Variables and functions */
 int IA32_ARCH_CAP_SSB_NO ; 
 int cpu_ia32_arch_caps ; 
 int hw_ssb_disable ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

void
FUNC1(bool all_cpus)
{

	switch (hw_ssb_disable) {
	default:
		hw_ssb_disable = 0;
		/* FALLTHROUGH */
	case 0: /* off */
		FUNC0(false, all_cpus);
		break;
	case 1: /* on */
		FUNC0(true, all_cpus);
		break;
	case 2: /* auto */
		FUNC0((cpu_ia32_arch_caps & IA32_ARCH_CAP_SSB_NO) != 0 ?
		    false : true, all_cpus);
		break;
	}
}