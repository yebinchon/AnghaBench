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
struct sb_info {void* drq1; void* drq2; int /*<<< orphan*/  bufsize; void* irq; void* io_base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SD_F_SIMPLEX ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static int
FUNC6(struct sb_info *sb, device_t dev)
{
	int rid;

	rid = 0;
	if (!sb->io_base)
    		sb->io_base = FUNC0(dev, SYS_RES_IOPORT,
			&rid, RF_ACTIVE);

	rid = 0;
	if (!sb->irq)
    		sb->irq = FUNC0(dev, SYS_RES_IRQ, &rid,
			RF_ACTIVE);

	rid = 0;
	if (!sb->drq1)
    		sb->drq1 = FUNC0(dev, SYS_RES_DRQ, &rid,
			RF_ACTIVE);

	rid = 1;
	if (!sb->drq2)
        	sb->drq2 = FUNC0(dev, SYS_RES_DRQ, &rid,
			RF_ACTIVE);

    	if (sb->io_base && sb->drq1 && sb->irq) {
		FUNC1(FUNC5(sb->drq1));
		FUNC2(FUNC5(sb->drq1), sb->bufsize);

		if (sb->drq2) {
			FUNC1(FUNC5(sb->drq2));
			FUNC2(FUNC5(sb->drq2), sb->bufsize);
		} else {
			sb->drq2 = sb->drq1;
			FUNC4(dev, FUNC3(dev) | SD_F_SIMPLEX);
		}
		return 0;
	} else return ENXIO;
}