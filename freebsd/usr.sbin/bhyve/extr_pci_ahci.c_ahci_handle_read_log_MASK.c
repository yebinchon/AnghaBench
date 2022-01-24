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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ahci_port {int /*<<< orphan*/  bctx; int /*<<< orphan*/  err_cfis; scalar_t__ atapi; scalar_t__ cmd_lst; } ;
struct ahci_cmd_hdr {scalar_t__ prdtl; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int AHCI_CL_SIZE ; 
 int ATA_E_ABORT ; 
 int ATA_READ_LOG_EXT ; 
 int ATA_S_DSC ; 
 int ATA_S_ERROR ; 
 int ATA_S_READY ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_port*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_port*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ahci_port*,int,int*,void*,int) ; 

__attribute__((used)) static void
FUNC8(struct ahci_port *p, int slot, uint8_t *cfis)
{
	struct ahci_cmd_hdr *hdr;
	uint32_t buf[128];
	uint8_t *buf8 = (uint8_t *)buf;
	uint16_t *buf16 = (uint16_t *)buf;

	hdr = (struct ahci_cmd_hdr *)(p->cmd_lst + slot * AHCI_CL_SIZE);
	if (p->atapi || hdr->prdtl == 0 || cfis[5] != 0 ||
	    cfis[9] != 0 || cfis[12] != 1 || cfis[13] != 0) {
		FUNC1(p, slot, cfis,
		    (ATA_E_ABORT << 8) | ATA_S_READY | ATA_S_ERROR);
		return;
	}

	FUNC6(buf, 0, sizeof(buf));
	if (cfis[4] == 0x00) {	/* Log directory */
		buf16[0x00] = 1; /* Version -- 1 */
		buf16[0x10] = 1; /* NCQ Command Error Log -- 1 page */
		buf16[0x13] = 1; /* SATA NCQ Send and Receive Log -- 1 page */
	} else if (cfis[4] == 0x10) {	/* NCQ Command Error Log */
		FUNC5(buf8, p->err_cfis, sizeof(p->err_cfis));
		FUNC0(buf8, sizeof(buf));
	} else if (cfis[4] == 0x13) {	/* SATA NCQ Send and Receive Log */
		if (FUNC3(p->bctx) && !FUNC4(p->bctx)) {
			buf[0x00] = 1;	/* SFQ DSM supported */
			buf[0x01] = 1;	/* SFQ DSM TRIM supported */
		}
	} else {
		FUNC1(p, slot, cfis,
		    (ATA_E_ABORT << 8) | ATA_S_READY | ATA_S_ERROR);
		return;
	}

	if (cfis[2] == ATA_READ_LOG_EXT)
		FUNC2(p);
	FUNC7(p, slot, cfis, (void *)buf, sizeof(buf));
	FUNC1(p, slot, cfis, ATA_S_DSC | ATA_S_READY);
}