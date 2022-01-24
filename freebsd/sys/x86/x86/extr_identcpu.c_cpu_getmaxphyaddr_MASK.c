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
typedef  int vm_paddr_t ;

/* Variables and functions */
 unsigned long long cpu_maxphyaddr ; 
 int /*<<< orphan*/  pae_mode ; 

vm_paddr_t
FUNC0(void)
{

#if defined(__i386__)
	if (!pae_mode)
		return (0xffffffff);
#endif
	return ((1ULL << cpu_maxphyaddr) - 1);
}