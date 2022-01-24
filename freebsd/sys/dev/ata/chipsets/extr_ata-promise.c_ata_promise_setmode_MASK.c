#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int member_0; int member_1; } ;
typedef  TYPE_2__ uint32_t ;
struct ata_pci_controller {TYPE_1__* chip; int /*<<< orphan*/  r_res2; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int cfg1; int cfg2; int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_BMDEVSPEC_0 ; 
 int /*<<< orphan*/  ATA_BMDEVSPEC_1 ; 
 int FUNC0 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int ATA_UDMA2 ; 
#define  PR_MIO 131 
#define  PR_NEW 130 
#define  PR_OLD 129 
 int PR_SX4X ; 
#define  PR_TX 128 
 int /*<<< orphan*/  ata_dma_check_80pin ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,TYPE_2__ const,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, int target, int mode)
{
    device_t parent = FUNC5(dev);
    struct ata_pci_controller *ctlr = FUNC6(parent);
    struct ata_channel *ch = FUNC6(dev);
    int devno = (ch->unit << 1) + target;
    static const uint32_t timings[][2] = {
    /*    PR_OLD      PR_NEW               mode */
	{ 0x004ff329, 0x004fff2f },     /* PIO 0 */
	{ 0x004fec25, 0x004ff82a },     /* PIO 1 */
	{ 0x004fe823, 0x004ff026 },     /* PIO 2 */
	{ 0x004fe622, 0x004fec24 },     /* PIO 3 */
	{ 0x004fe421, 0x004fe822 },     /* PIO 4 */
	{ 0x004567f3, 0x004acef6 },     /* MWDMA 0 */
	{ 0x004467f3, 0x0048cef6 },     /* MWDMA 1 */
	{ 0x004367f3, 0x0046cef6 },     /* MWDMA 2 */
	{ 0x004367f3, 0x0046cef6 },     /* UDMA 0 */
	{ 0x004247f3, 0x00448ef6 },     /* UDMA 1 */
	{ 0x004127f3, 0x00436ef6 },     /* UDMA 2 */
	{ 0,          0x00424ef6 },     /* UDMA 3 */
	{ 0,          0x004127f3 },     /* UDMA 4 */
	{ 0,          0x004127f3 }      /* UDMA 5 */
    };

    mode = FUNC7(mode, ctlr->chip->max_dma);

    switch (ctlr->chip->cfg1) {
    case PR_OLD:
    case PR_NEW:
	if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
	    (FUNC8(parent, 0x50, 2) &
				 (ch->unit ? 1 << 11 : 1 << 10))) {
	    FUNC4(dev, "controller");
	    mode = ATA_UDMA2;
	}
	break;

    case PR_TX:
	FUNC1(ch, ATA_BMDEVSPEC_0, 0x0b);
	if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
	    FUNC0(ch, ATA_BMDEVSPEC_1) & 0x04) {
	    FUNC4(dev, "controller");
	    mode = ATA_UDMA2;
	}
	break;
   
    case PR_MIO:
	if (ata_dma_check_80pin && mode > ATA_UDMA2 &&
	    (FUNC2(ctlr->r_res2,
		     (ctlr->chip->cfg2 & PR_SX4X ? 0x000c0260 : 0x0260) +
		     (ch->unit << 7)) & 0x01000000)) {
	    FUNC4(dev, "controller");
	    mode = ATA_UDMA2;
	}
	break;
    }

	if (ctlr->chip->cfg1 < PR_TX)
	    FUNC9(parent, 0x60 + (devno << 2),
			     timings[FUNC3(mode)][ctlr->chip->cfg1], 4);
	return (mode);
}