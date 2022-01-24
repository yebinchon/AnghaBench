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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 scalar_t__ FUNC4 (struct resource*) ; 

__attribute__((used)) static int
FUNC5(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
	vm_size_t psize;

	if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY) {
		return (FUNC0(bus, child, type, rid,
		    res));
	}

	psize = FUNC3(res);
	FUNC1((vm_offset_t)FUNC4(res), psize);

	return (FUNC2(res));
}