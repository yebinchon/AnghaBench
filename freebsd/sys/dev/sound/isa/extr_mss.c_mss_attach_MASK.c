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
struct mss_info {int conf_rid; int drq2_rid; int bd_id; scalar_t__ drq1_rid; scalar_t__ irq_rid; scalar_t__ io_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DV_F_DEV_MASK ; 
 int DV_F_DEV_SHIFT ; 
 int DV_F_DRQ_MASK ; 
 int DV_F_DUAL_DMA ; 
 int ENXIO ; 
 int MD_YM0020 ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mss_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mss_info*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    	struct mss_info *mss;
    	int flags = FUNC1(dev);

    	mss = (struct mss_info *)FUNC2(sizeof *mss, M_DEVBUF, M_NOWAIT | M_ZERO);
    	if (!mss) return ENXIO;

    	mss->io_rid = 0;
    	mss->conf_rid = -1;
    	mss->irq_rid = 0;
    	mss->drq1_rid = 0;
    	mss->drq2_rid = -1;
    	if (flags & DV_F_DUAL_DMA) {
        	FUNC0(dev, SYS_RES_DRQ, 1,
    		         	 flags & DV_F_DRQ_MASK, 1);
		mss->drq2_rid = 1;
    	}
    	mss->bd_id = (FUNC1(dev) & DV_F_DEV_MASK) >> DV_F_DEV_SHIFT;
    	if (mss->bd_id == MD_YM0020) FUNC4(dev, mss);
    	return FUNC3(dev, mss);
}