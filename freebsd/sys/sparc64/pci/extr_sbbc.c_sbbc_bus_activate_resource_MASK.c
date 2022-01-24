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

/* Variables and functions */
 int SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 

__attribute__((used)) static int
FUNC1(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{

	if (type == SYS_RES_MEMORY)
		return (0);
	return (FUNC0(bus, child, type, rid, res));
}