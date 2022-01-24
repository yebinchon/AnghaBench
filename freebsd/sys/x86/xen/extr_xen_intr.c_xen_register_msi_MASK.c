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
struct xenisrc {int xi_pirq; int xi_edgetrigger; } ;
struct physdev_map_pirq {int index; int pirq; int bus; int devfn; int entry_nr; int /*<<< orphan*/  type; int /*<<< orphan*/  domid; } ;
typedef  int /*<<< orphan*/  msi_irq ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  EVTCHN_TYPE_PIRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,struct physdev_map_pirq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAP_PIRQ_TYPE_MSI_SEG ; 
 int /*<<< orphan*/  MAP_PIRQ_TYPE_MULTI_MSI ; 
 int /*<<< orphan*/  PHYSDEVOP_map_pirq ; 
 int /*<<< orphan*/  FUNC2 (struct physdev_map_pirq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct xenisrc* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 

int
FUNC11(device_t dev, int vector, int count)
{
	struct physdev_map_pirq msi_irq;
	struct xenisrc *isrc;
	int ret;

	FUNC2(&msi_irq, 0, sizeof(msi_irq));
	msi_irq.domid = DOMID_SELF;
	msi_irq.type = count == 1 ?
	    MAP_PIRQ_TYPE_MSI_SEG : MAP_PIRQ_TYPE_MULTI_MSI;
	msi_irq.index = -1;
	msi_irq.pirq = -1;
	msi_irq.bus = FUNC6(dev) | (FUNC7(dev) << 16);
	msi_irq.devfn = (FUNC9(dev) << 3) | FUNC8(dev);
	msi_irq.entry_nr = count;

	ret = FUNC0(PHYSDEVOP_map_pirq, &msi_irq);
	if (ret != 0)
		return (ret);
	if (count != msi_irq.entry_nr) {
		FUNC5("unable to setup all requested MSI vectors "
		    "(expected %d got %d)", count, msi_irq.entry_nr);
	}

	FUNC3(&xen_intr_isrc_lock);
	for (int i = 0; i < count; i++) {
		isrc = FUNC10(EVTCHN_TYPE_PIRQ, vector + i);
		FUNC1(isrc != NULL,
		    ("xen: unable to allocate isrc for interrupt"));
		isrc->xi_pirq = msi_irq.pirq + i;
		/* MSI interrupts are always edge triggered */
		isrc->xi_edgetrigger = 1;
	}
	FUNC4(&xen_intr_isrc_lock);

	return (0);
}