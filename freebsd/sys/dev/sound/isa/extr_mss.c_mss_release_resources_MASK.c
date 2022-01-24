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
struct mss_info {scalar_t__ lock; scalar_t__ parent_dmat; int /*<<< orphan*/ * indir; int /*<<< orphan*/  indir_rid; int /*<<< orphan*/ * conf_base; int /*<<< orphan*/  conf_rid; int /*<<< orphan*/ * io_base; int /*<<< orphan*/  io_rid; int /*<<< orphan*/ * drq1; int /*<<< orphan*/  drq1_rid; int /*<<< orphan*/ * drq2; int /*<<< orphan*/  drq2_rid; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irq_rid; scalar_t__ ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct mss_info *mss, device_t dev)
{
    	if (mss->irq) {
    		if (mss->ih)
			FUNC2(dev, mss->irq, mss->ih);
 		FUNC1(dev, SYS_RES_IRQ, mss->irq_rid,
				     mss->irq);
		mss->irq = NULL;
    	}
    	if (mss->drq2) {
		if (mss->drq2 != mss->drq1) {
			FUNC4(FUNC5(mss->drq2));
			FUNC1(dev, SYS_RES_DRQ, mss->drq2_rid,
				     	mss->drq2);
		}
		mss->drq2 = NULL;
    	}
     	if (mss->drq1) {
		FUNC4(FUNC5(mss->drq1));
		FUNC1(dev, SYS_RES_DRQ, mss->drq1_rid,
				     mss->drq1);
		mss->drq1 = NULL;
    	}
   	if (mss->io_base) {
		FUNC1(dev, SYS_RES_IOPORT, mss->io_rid,
				     mss->io_base);
		mss->io_base = NULL;
    	}
    	if (mss->conf_base) {
		FUNC1(dev, SYS_RES_IOPORT, mss->conf_rid,
				     mss->conf_base);
		mss->conf_base = NULL;
    	}
	if (mss->indir) {
		FUNC1(dev, SYS_RES_IOPORT, mss->indir_rid,
				     mss->indir);
		mss->indir = NULL;
	}
    	if (mss->parent_dmat) {
		FUNC0(mss->parent_dmat);
		mss->parent_dmat = 0;
    	}
	if (mss->lock) FUNC6(mss->lock);

     	FUNC3(mss, M_DEVBUF);
}