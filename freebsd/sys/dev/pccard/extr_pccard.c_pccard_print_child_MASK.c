#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource_list {int dummy; } ;
struct pccard_ivar {TYPE_2__* pf; struct resource_list resources; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int number; TYPE_1__* cfe; } ;
struct TYPE_3__ {int number; } ;

/* Variables and functions */
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCCARD_NDRQ ; 
 int /*<<< orphan*/  PCCARD_NIRQ ; 
 int /*<<< orphan*/  PCCARD_NMEM ; 
 int /*<<< orphan*/  PCCARD_NPORT ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource_list*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child)
{
	struct pccard_ivar *devi = FUNC0(child);
	struct resource_list *rl = &devi->resources;
	int retval = 0;

	retval += FUNC2(dev, child);
	retval += FUNC4(" at");

	if (devi != NULL) {
		FUNC3(rl, "port", SYS_RES_IOPORT,
		    PCCARD_NPORT, "%#lx");
		FUNC3(rl, "iomem", SYS_RES_MEMORY,
		    PCCARD_NMEM, "%#lx");
		FUNC3(rl, "irq", SYS_RES_IRQ, PCCARD_NIRQ,
		    "%ld");
		FUNC3(rl, "drq", SYS_RES_DRQ, PCCARD_NDRQ,
		    "%ld");
		retval += FUNC4(" function %d config %d", devi->pf->number,
		    devi->pf->cfe->number);
	}

	retval += FUNC1(dev, child);

	return (retval);
}