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
struct isa_config {int ic_nmem; int ic_nport; int ic_nirq; int ic_ndrq; int /*<<< orphan*/ * ic_drqmask; int /*<<< orphan*/ * ic_irqmask; int /*<<< orphan*/ * ic_port; int /*<<< orphan*/ * ic_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ISA_NDRQ ; 
 int ISA_NIRQ ; 
 int ISA_NMEM ; 
 int ISA_NPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct isa_config *from,
		    struct isa_config *to)
{
	device_t parent;
	int i;

	parent = FUNC0(dev);
	for (i = 0; i < from->ic_nmem; i++) {
		if (to->ic_nmem == ISA_NMEM) {
			FUNC1(parent, "too many memory ranges\n");
			return;
		}
		to->ic_mem[to->ic_nmem] = from->ic_mem[i];
		to->ic_nmem++;
	}
	for (i = 0; i < from->ic_nport; i++) {
		if (to->ic_nport == ISA_NPORT) {
			FUNC1(parent, "too many port ranges\n");
			return;
		}
		to->ic_port[to->ic_nport] = from->ic_port[i];
		to->ic_nport++;
	}
	for (i = 0; i < from->ic_nirq; i++) {
		if (to->ic_nirq == ISA_NIRQ) {
			FUNC1(parent, "too many irq ranges\n");
			return;
		}
		to->ic_irqmask[to->ic_nirq] = from->ic_irqmask[i];
		to->ic_nirq++;
	}
	for (i = 0; i < from->ic_ndrq; i++) {
		if (to->ic_ndrq == ISA_NDRQ) {
			FUNC1(parent, "too many drq ranges\n");
			return;
		}
		to->ic_drqmask[to->ic_ndrq] = from->ic_drqmask[i];
		to->ic_ndrq++;
	}
}