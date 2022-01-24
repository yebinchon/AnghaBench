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
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	bus_space_tag_t iot;
	bus_space_handle_t ioh;
	struct resource *mem_res;
	int rv, mem_rid;

	mem_rid = 0;
	mem_res = FUNC0(dev, SYS_RES_MEMORY, &mem_rid,
	    RF_ACTIVE);
	if (mem_res == NULL)
		return (ENXIO);
	iot = FUNC4(mem_res);
	ioh = FUNC3(mem_res);

	if ((rv = FUNC5(iot, ioh)))
		FUNC2(dev, "Trusted Platform Module");

	FUNC1(dev, SYS_RES_MEMORY, mem_rid, mem_res);
	return rv ? 0 : ENXIO;
}