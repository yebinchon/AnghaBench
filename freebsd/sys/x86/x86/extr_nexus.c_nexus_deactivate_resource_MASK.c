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
struct resource_map {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_UNMAPPED ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*,struct resource_map*) ; 
 int FUNC1 (struct resource*) ; 
 int FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,struct resource_map*) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t child, int type, int rid,
			  struct resource *r)
{
	struct resource_map map;
	int error;

	error = FUNC1(r);
	if (error)
		return (error);

	if (!(FUNC2(r) & RF_UNMAPPED) &&
	    (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT)) {
		FUNC3(r, &map);
		FUNC0(bus, child, type, r, &map);
	}
	return (0);
}