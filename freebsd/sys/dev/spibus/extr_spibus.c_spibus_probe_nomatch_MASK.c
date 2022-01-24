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
struct spibus_ivar {int /*<<< orphan*/  mode; int /*<<< orphan*/  cs; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct spibus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t bus, device_t child)
{
	struct spibus_ivar *devi = FUNC0(child);

	FUNC1(bus, "<unknown card> at cs %d mode %d\n", devi->cs,
	    devi->mode);
	return;
}