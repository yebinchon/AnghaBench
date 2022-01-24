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
struct spibus_ivar {int /*<<< orphan*/  mode; int /*<<< orphan*/  cs; int /*<<< orphan*/  clock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 struct spibus_ivar* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPIBUS_MODE_NONE ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(device_t bus, const char *dname, int dunit)
{
	device_t child;
	struct spibus_ivar *devi;

	child = FUNC0(bus, 0, dname, dunit);
	devi = FUNC1(child);
	devi->mode = SPIBUS_MODE_NONE;
	FUNC2(dname, dunit, "clock", &devi->clock);
	FUNC2(dname, dunit, "cs", &devi->cs);
	FUNC2(dname, dunit, "mode", &devi->mode);
}