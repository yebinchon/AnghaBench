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
struct mss_info {scalar_t__ io_rid; scalar_t__ irq_rid; scalar_t__ drq1_rid; scalar_t__ conf_rid; scalar_t__ drq2_rid; void* drq1; void* drq2; int /*<<< orphan*/  bd_flags; int /*<<< orphan*/  bufsize; void* conf_base; void* irq; void* io_base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BD_F_DUPLEX ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 

__attribute__((used)) static int
FUNC4(struct mss_info *mss, device_t dev)
{
    	int pdma, rdma, ok = 1;
	if (!mss->io_base)
    		mss->io_base = FUNC0(dev, SYS_RES_IOPORT,
						      &mss->io_rid, RF_ACTIVE);
	if (!mss->irq)
    		mss->irq = FUNC0(dev, SYS_RES_IRQ,
						  &mss->irq_rid, RF_ACTIVE);
	if (!mss->drq1)
    		mss->drq1 = FUNC0(dev, SYS_RES_DRQ,
						   &mss->drq1_rid,
						   RF_ACTIVE);
    	if (mss->conf_rid >= 0 && !mss->conf_base)
        	mss->conf_base = FUNC0(dev, SYS_RES_IOPORT,
							&mss->conf_rid,
							RF_ACTIVE);
    	if (mss->drq2_rid >= 0 && !mss->drq2)
        	mss->drq2 = FUNC0(dev, SYS_RES_DRQ,
						   &mss->drq2_rid,
						   RF_ACTIVE);

	if (!mss->io_base || !mss->drq1 || !mss->irq) ok = 0;
	if (mss->conf_rid >= 0 && !mss->conf_base) ok = 0;
	if (mss->drq2_rid >= 0 && !mss->drq2) ok = 0;

	if (ok) {
		pdma = FUNC3(mss->drq1);
		FUNC1(pdma);
		FUNC2(pdma, mss->bufsize);
		mss->bd_flags &= ~BD_F_DUPLEX;
		if (mss->drq2) {
			rdma = FUNC3(mss->drq2);
			FUNC1(rdma);
			FUNC2(rdma, mss->bufsize);
			mss->bd_flags |= BD_F_DUPLEX;
		} else mss->drq2 = mss->drq1;
	}
    	return ok;
}