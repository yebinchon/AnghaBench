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
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int nswbuf ; 
 int nvnpbufs ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  vnode_pbuf_zone ; 

__attribute__((used)) static void
FUNC2(void *dummy)
{

#ifdef __LP64__
	nvnpbufs = nswbuf * 2;
#else
	nvnpbufs = nswbuf / 2;
#endif
	FUNC0("vm.vnode_pbufs", &nvnpbufs);
	vnode_pbuf_zone = FUNC1("vnpbuf", nvnpbufs);
}