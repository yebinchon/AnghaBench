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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint32_t ;
struct siba_devinfo {struct bhnd_resource** cfg_res; } ;
struct bhnd_resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int SIBA_CFG_SIZE ; 
 int FUNC2 (struct bhnd_resource*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_resource*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(device_t dev, struct siba_devinfo *dinfo,
    bus_size_t reg, uint32_t value, uint32_t mask)
{
	struct bhnd_resource	*r;
	uint32_t		 rval;

	r = dinfo->cfg_res[0];

	FUNC1(r != NULL, ("%s missing CFG0 mapping",
	    FUNC4(dev)));
	FUNC1(reg <= SIBA_CFG_SIZE-4, ("%s invalid CFG0 register offset %#jx",
	    FUNC4(dev), (uintmax_t)reg));

	rval = FUNC2(r, reg);
	rval &= ~mask;
	rval |= (value & mask);

	FUNC3(r, reg, rval);
	FUNC2(r, reg); /* read-back */
	FUNC0(1);
}