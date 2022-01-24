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
typedef  int u_char ;
struct mss_info {int conf_rid; int drq2_rid; scalar_t__ io_rid; void* io_base; scalar_t__ drq1_rid; scalar_t__ irq_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DV_F_TRUE_MSS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mss_info*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct mss_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
    	u_char tmp, tmpx;
    	int flags, irq, drq, result = ENXIO, setres = 0;
    	struct mss_info *mss;

    	if (FUNC11(dev)) return ENXIO; /* not yet */

    	mss = (struct mss_info *)FUNC12(sizeof *mss, M_DEVBUF, M_NOWAIT | M_ZERO);
    	if (!mss) return ENXIO;

    	mss->io_rid = 0;
    	mss->conf_rid = -1;
    	mss->irq_rid = 0;
    	mss->drq1_rid = 0;
    	mss->drq2_rid = -1;
    	mss->io_base = FUNC2(dev, SYS_RES_IOPORT,
    						&mss->io_rid, 8, RF_ACTIVE);
    	if (!mss->io_base) {
        	FUNC0(FUNC15("mss_probe: no address given, try 0x%x\n", 0x530));
		mss->io_rid = 0;
		/* XXX verify this */
		setres = 1;
		FUNC3(dev, SYS_RES_IOPORT, mss->io_rid,
    		         	0x530, 8);
		mss->io_base = FUNC2(dev, SYS_RES_IOPORT,
							&mss->io_rid,
							8, RF_ACTIVE);
    	}
    	if (!mss->io_base) goto no;

    	/* got irq/dma regs? */
    	flags = FUNC4(dev);
    	irq = FUNC10(dev);
    	drq = FUNC9(dev);

    	if (!(FUNC4(dev) & DV_F_TRUE_MSS)) goto mss_probe_end;

    	/*
     	* Check if the IO port returns valid signature. The original MS
     	* Sound system returns 0x04 while some cards
     	* (AudioTriX Pro for example) return 0x00 or 0x0f.
     	*/

    	FUNC6(dev, "MSS");
    	tmpx = tmp = FUNC8(mss, 3);
    	if (tmp == 0xff) {	/* Bus float */
		FUNC0(FUNC15("I/O addr inactive (%x), try pseudo_mss\n", tmp));
		FUNC7(dev, flags & ~DV_F_TRUE_MSS);
		goto mss_probe_end;
    	}
    	tmp &= 0x3f;
    	if (!(tmp == 0x04 || tmp == 0x0f || tmp == 0x00 || tmp == 0x05)) {
		FUNC0(FUNC15("No MSS signature detected on port 0x%jx (0x%x)\n",
		     	FUNC16(mss->io_base), tmpx));
		goto no;
    	}
    	if (irq > 11) {
		FUNC15("MSS: Bad IRQ %d\n", irq);
		goto no;
    	}
    	if (!(drq == 0 || drq == 1 || drq == 3)) {
		FUNC15("MSS: Bad DMA %d\n", drq);
		goto no;
    	}
    	if (tmpx & 0x80) {
		/* 8-bit board: only drq1/3 and irq7/9 */
		if (drq == 0) {
		    	FUNC15("MSS: Can't use DMA0 with a 8 bit card/slot\n");
		    	goto no;
		}
		if (!(irq == 7 || irq == 9)) {
		    	FUNC15("MSS: Can't use IRQ%d with a 8 bit card/slot\n",
			       irq);
		    	goto no;
		}
    	}
	mss_probe_end:
    	result = FUNC13(dev, mss);
	no:
    	FUNC14(mss, dev);
#if 0
    	if (setres) ISA_DELETE_RESOURCE(device_get_parent(dev), dev,
    				    	SYS_RES_IOPORT, mss->io_rid); /* XXX ? */
#endif
    	return result;
}