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
struct ad1816_info {int /*<<< orphan*/  bufsize; void* drq2; void* drq1; void* irq; void* io_base; int /*<<< orphan*/  drq2_rid; int /*<<< orphan*/  drq1_rid; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  io_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SD_F_SIMPLEX ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (void*) ; 

__attribute__((used)) static int
FUNC6(struct ad1816_info *ad1816, device_t dev)
{
    	int ok = 1, pdma, rdma;

	if (!ad1816->io_base)
    		ad1816->io_base = FUNC0(dev, 
			SYS_RES_IOPORT, &ad1816->io_rid, RF_ACTIVE);
	if (!ad1816->irq)
    		ad1816->irq = FUNC0(dev, SYS_RES_IRQ,
			&ad1816->irq_rid, RF_ACTIVE);
	if (!ad1816->drq1)
    		ad1816->drq1 = FUNC0(dev, SYS_RES_DRQ,
			&ad1816->drq1_rid, RF_ACTIVE);
    	if (!ad1816->drq2)
        	ad1816->drq2 = FUNC0(dev, SYS_RES_DRQ, 
			&ad1816->drq2_rid, RF_ACTIVE);

    	if (!ad1816->io_base || !ad1816->drq1 || !ad1816->irq) ok = 0;

	if (ok) {
		pdma = FUNC5(ad1816->drq1);
		FUNC1(pdma);
		FUNC2(pdma, ad1816->bufsize);
		if (ad1816->drq2) {
			rdma = FUNC5(ad1816->drq2);
			FUNC1(rdma);
			FUNC2(rdma, ad1816->bufsize);
		} else
			rdma = pdma;
    		if (pdma == rdma)
			FUNC4(dev, FUNC3(dev) | SD_F_SIMPLEX);
	}

    	return ok;
}