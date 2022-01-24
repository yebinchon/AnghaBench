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
 int /*<<< orphan*/  M_WAITOK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* fuse_lookup_cache_hits ; 
 void* fuse_lookup_cache_misses ; 

void
FUNC1(void)
{
	fuse_lookup_cache_misses = FUNC0(M_WAITOK);
	fuse_lookup_cache_hits = FUNC0(M_WAITOK);
}