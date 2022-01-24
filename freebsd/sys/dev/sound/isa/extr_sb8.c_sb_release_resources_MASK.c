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
struct sb_info {scalar_t__ parent_dmat; int /*<<< orphan*/ * io_base; int /*<<< orphan*/ * drq; int /*<<< orphan*/ * irq; scalar_t__ ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct sb_info *sb, device_t dev)
{
    	if (sb->irq) {
    		if (sb->ih)
			FUNC2(dev, sb->irq, sb->ih);
 		FUNC1(dev, SYS_RES_IRQ, 0, sb->irq);
		sb->irq = NULL;
    	}
    	if (sb->drq) {
		FUNC4(FUNC5(sb->drq));
		FUNC1(dev, SYS_RES_DRQ, 0, sb->drq);
		sb->drq = NULL;
    	}
    	if (sb->io_base) {
		FUNC1(dev, SYS_RES_IOPORT, 0, sb->io_base);
		sb->io_base = NULL;
    	}
    	if (sb->parent_dmat) {
		FUNC0(sb->parent_dmat);
		sb->parent_dmat = 0;
    	}
     	FUNC3(sb, M_DEVBUF);
}