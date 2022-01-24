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
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

void
FUNC2(char *addr, unsigned long length)
{

#if defined(__i386__) || defined(__amd64__)
	FUNC1((vm_offset_t)addr,
	    (vm_offset_t)addr + length);
#else
	DRM_ERROR("drm_clflush_virt_range not implemented on this architecture");
#endif
}