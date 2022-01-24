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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
	bus_space_handle_t bh;
	int error;

	switch (type) {
	case SYS_RES_IRQ:
		error = FUNC0(bus, child, type, rid,
						      res);
		if (error != 0)
			return (error);
		return (0);
	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		error = FUNC1(FUNC4(res),
		    FUNC3(res), FUNC5(res), 0, &bh);
		if (error != 0)
			return (error);
		FUNC6(res, bh);
		break;
	default:
		return (ENXIO);
	}

	error = FUNC2(res);
	if (error != 0)
		return (error);
	return (0);
}