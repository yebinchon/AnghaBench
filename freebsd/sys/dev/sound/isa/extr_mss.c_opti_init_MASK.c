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
typedef  int u_int32_t ;
struct mss_info {int conf_rid; int optibase; int io_rid; int bd_id; int bd_flags; int drq1_rid; int drq2_rid; void* io_base; void* conf_base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BD_F_924PNP ; 
 int DV_F_DRQ_MASK ; 
 int DV_F_DUAL_DMA ; 
 int DV_F_TRUE_MSS ; 
 int ENXIO ; 
#define  MD_OPTI924 129 
#define  MD_OPTI930 128 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mss_info*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (void*) ; 

__attribute__((used)) static int
FUNC10(device_t dev, struct mss_info *mss)
{
	int flags = FUNC3(dev);
	int basebits = 0;

	if (!mss->conf_base) {
		FUNC2(dev, SYS_RES_IOPORT, mss->conf_rid,
			mss->optibase, 0x9);

		mss->conf_base = FUNC0(dev, SYS_RES_IOPORT,
			&mss->conf_rid, mss->optibase, mss->optibase+0x9,
			0x9, RF_ACTIVE);
	}

	if (!mss->conf_base)
		return ENXIO;

	if (!mss->io_base)
		mss->io_base = FUNC1(dev, SYS_RES_IOPORT,
			&mss->io_rid, 8, RF_ACTIVE);

	if (!mss->io_base)	/* No hint specified, use 0x530 */
		mss->io_base = FUNC0(dev, SYS_RES_IOPORT,
			&mss->io_rid, 0x530, 0x537, 8, RF_ACTIVE);

	if (!mss->io_base)
		return ENXIO;

	switch (FUNC9(mss->io_base)) {
		case 0x530:
			basebits = 0x0;
			break;
		case 0xe80:
			basebits = 0x10;
			break;
		case 0xf40:
			basebits = 0x20;
			break;
		case 0x604:
			basebits = 0x30;
			break;
		default:
			FUNC8("opti_init: invalid MSS base address!\n");
			return ENXIO;
	}


	switch (mss->bd_id) {
	case MD_OPTI924:
		FUNC7(mss, 1, 0x80 | basebits);	/* MSS mode */
		FUNC7(mss, 2, 0x00);	/* Disable CD */
		FUNC7(mss, 3, 0xf0);	/* Disable SB IRQ */
		FUNC7(mss, 4, 0xf0);
		FUNC7(mss, 5, 0x00);
		FUNC7(mss, 6, 0x02);	/* MPU stuff */
		break;

	case MD_OPTI930:
		FUNC7(mss, 1, 0x00 | basebits);
		FUNC7(mss, 3, 0x00);	/* Disable SB IRQ/DMA */
		FUNC7(mss, 4, 0x52);	/* Empty FIFO */
		FUNC7(mss, 5, 0x3c);	/* Mode 2 */
		FUNC7(mss, 6, 0x02);	/* Enable MSS */
		break;
	}

	if (mss->bd_flags & BD_F_924PNP) {
		u_int32_t irq = FUNC6(dev);
		u_int32_t drq = FUNC5(dev);
		FUNC2(dev, SYS_RES_IRQ, 0, irq, 1);
		FUNC2(dev, SYS_RES_DRQ, mss->drq1_rid, drq, 1);
		if (flags & DV_F_DUAL_DMA) {
			FUNC2(dev, SYS_RES_DRQ, 1,
				flags & DV_F_DRQ_MASK, 1);
			mss->drq2_rid = 1;
		}
	}

	/* OPTixxx has I/DRQ registers */

	FUNC4(dev, FUNC3(dev) | DV_F_TRUE_MSS);

	return 0;
}