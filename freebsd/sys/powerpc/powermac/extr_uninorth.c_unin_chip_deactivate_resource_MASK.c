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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t child, int type, int rid,
			      struct resource *res)
{
        /*
         * If this is a memory resource, unmap it.
         */
        if ((type == SYS_RES_MEMORY) || (type == SYS_RES_IOPORT)) {
		u_int32_t psize;
		
		psize = FUNC2(res);
		FUNC0((vm_offset_t)FUNC3(res), psize);
	}

	return (FUNC1(res));
}