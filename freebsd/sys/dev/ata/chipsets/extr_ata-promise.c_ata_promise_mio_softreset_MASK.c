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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct ata_pci_controller {int /*<<< orphan*/  r_res2; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_A_IDS ; 
 int ATA_A_RESET ; 
 int /*<<< orphan*/  ATA_CONTROL ; 
 int /*<<< orphan*/  ATA_COUNT ; 
 int /*<<< orphan*/  ATA_CYL_LSB ; 
 int /*<<< orphan*/  ATA_CYL_MSB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATA_DRIVE ; 
 int ATA_D_IBM ; 
 int ATA_D_LBA ; 
 int /*<<< orphan*/  ATA_ERROR ; 
 int FUNC1 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ATA_MASTER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ATA_SECTOR ; 
 int /*<<< orphan*/  ATA_STATUS ; 
 int ATA_S_BUSY ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC8(device_t dev, int port)
{
    struct ata_pci_controller *ctlr = FUNC7(FUNC6(dev));
    struct ata_channel *ch = FUNC7(dev);
    int timeout;

    /* set portmultiplier port */
    FUNC3(ctlr->r_res2, 0x4e8 + (ch->unit << 8), port & 0x0f);

    /* softreset device on this channel */
    FUNC2(ch, ATA_DRIVE, ATA_D_IBM | ATA_D_LBA | FUNC0(ATA_MASTER));
    FUNC4(10);
    FUNC2(ch, ATA_CONTROL, ATA_A_IDS | ATA_A_RESET);
    FUNC5(10000); 
    FUNC2(ch, ATA_CONTROL, ATA_A_IDS);
    FUNC5(150000);
    FUNC1(ch, ATA_ERROR);

    /* wait for BUSY to go inactive */
    for (timeout = 0; timeout < 100; timeout++) {
	u_int8_t /* err, */ stat;

	/* err = */ FUNC1(ch, ATA_ERROR);
	stat = FUNC1(ch, ATA_STATUS);

	//if (stat == err && timeout > (stat & ATA_S_BUSY ? 100 : 10))
	    //break;

	if (!(stat & ATA_S_BUSY)) {
	    //if ((err & 0x7f) == ATA_E_ILI) {
		return FUNC1(ch, ATA_COUNT) |
		       (FUNC1(ch, ATA_SECTOR) << 8) |
		       (FUNC1(ch, ATA_CYL_LSB) << 16) |
		       (FUNC1(ch, ATA_CYL_MSB) << 24);
	    //}
	    //else if (stat & 0x0f) {
		//stat |= ATA_S_BUSY;
	    //}
	}

	if (!(stat & ATA_S_BUSY) || (stat == 0xff && timeout > 10))
	    break;
	FUNC5(100000);
    }
    return -1;
}