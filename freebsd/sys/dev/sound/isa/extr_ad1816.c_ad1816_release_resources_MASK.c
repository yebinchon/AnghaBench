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
struct ad1816_info {scalar_t__ lock; scalar_t__ parent_dmat; int /*<<< orphan*/ * io_base; int /*<<< orphan*/  io_rid; int /*<<< orphan*/ * drq2; int /*<<< orphan*/  drq2_rid; int /*<<< orphan*/ * drq1; int /*<<< orphan*/  drq1_rid; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irq_rid; scalar_t__ ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ad1816_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct ad1816_info *ad1816, device_t dev)
{
    	if (ad1816->irq) {
   		if (ad1816->ih)
			FUNC2(dev, ad1816->irq, ad1816->ih);
		FUNC1(dev, SYS_RES_IRQ, ad1816->irq_rid, ad1816->irq);
		ad1816->irq = NULL;
    	}
    	if (ad1816->drq1) {
		FUNC4(FUNC5(ad1816->drq1));
		FUNC1(dev, SYS_RES_DRQ, ad1816->drq1_rid, ad1816->drq1);
		ad1816->drq1 = NULL;
    	}
    	if (ad1816->drq2) {
		FUNC4(FUNC5(ad1816->drq2));
		FUNC1(dev, SYS_RES_DRQ, ad1816->drq2_rid, ad1816->drq2);
		ad1816->drq2 = NULL;
    	}
    	if (ad1816->io_base) {
		FUNC1(dev, SYS_RES_IOPORT, ad1816->io_rid, ad1816->io_base);
		ad1816->io_base = NULL;
    	}
    	if (ad1816->parent_dmat) {
		FUNC0(ad1816->parent_dmat);
		ad1816->parent_dmat = 0;
    	}
	if (ad1816->lock)
		FUNC6(ad1816->lock);

     	FUNC3(ad1816, M_DEVBUF);
}