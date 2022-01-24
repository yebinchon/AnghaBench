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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  u_long ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  bs_be_tag ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct resource*) ; 
 scalar_t__ FUNC4 (struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,void*) ; 

__attribute__((used)) static int
FUNC9(device_t bus, device_t child, int type, int rid,
			    struct resource *res)
{
	void    *p;

	if (type == SYS_RES_IRQ)
                return (FUNC0(bus, type, rid, res));

	if ((type == SYS_RES_MEMORY) || (type == SYS_RES_IOPORT)) {
		vm_offset_t start;

		start = (vm_offset_t) FUNC5(res);

		if (bootverbose)
			FUNC2("unin mapdev: start %zx, len %jd\n", start,
			       FUNC4(res));

		p = FUNC1(start, (vm_size_t) FUNC4(res));
		if (p == NULL)
			return (ENOMEM);
		FUNC8(res, p);
		FUNC7(res, &bs_be_tag);
		FUNC6(res, (u_long)p);
	}

	return (FUNC3(res));
}