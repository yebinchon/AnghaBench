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
typedef  int quad_t ;

/* Variables and functions */
 int MCLBYTES ; 
 int MJUM16BYTES ; 
 int MJUM9BYTES ; 
 int MJUMPAGESIZE ; 
 int MSIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int FUNC2 (int,int) ; 
 int maxmbufmem ; 
 int nmbclusters ; 
 int nmbjumbo16 ; 
 int nmbjumbo9 ; 
 int nmbjumbop ; 
 int nmbufs ; 
 scalar_t__ physmem ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_kmem_size ; 

__attribute__((used)) static void
FUNC4(void *dummy)
{
	quad_t realmem;

	/*
	 * The default limit for all mbuf related memory is 1/2 of all
	 * available kernel memory (physical or kmem).
	 * At most it can be 3/4 of available kernel memory.
	 */
	realmem = FUNC3((quad_t)physmem * PAGE_SIZE, vm_kmem_size);
	maxmbufmem = realmem / 2;
	FUNC1("kern.ipc.maxmbufmem", &maxmbufmem);
	if (maxmbufmem > realmem / 4 * 3)
		maxmbufmem = realmem / 4 * 3;

	FUNC0("kern.ipc.nmbclusters", &nmbclusters);
	if (nmbclusters == 0)
		nmbclusters = maxmbufmem / MCLBYTES / 4;

	FUNC0("kern.ipc.nmbjumbop", &nmbjumbop);
	if (nmbjumbop == 0)
		nmbjumbop = maxmbufmem / MJUMPAGESIZE / 4;

	FUNC0("kern.ipc.nmbjumbo9", &nmbjumbo9);
	if (nmbjumbo9 == 0)
		nmbjumbo9 = maxmbufmem / MJUM9BYTES / 6;

	FUNC0("kern.ipc.nmbjumbo16", &nmbjumbo16);
	if (nmbjumbo16 == 0)
		nmbjumbo16 = maxmbufmem / MJUM16BYTES / 6;

	/*
	 * We need at least as many mbufs as we have clusters of
	 * the various types added together.
	 */
	FUNC0("kern.ipc.nmbufs", &nmbufs);
	if (nmbufs < nmbclusters + nmbjumbop + nmbjumbo9 + nmbjumbo16)
		nmbufs = FUNC2(maxmbufmem / MSIZE / 5,
		    nmbclusters + nmbjumbop + nmbjumbo9 + nmbjumbo16);
}