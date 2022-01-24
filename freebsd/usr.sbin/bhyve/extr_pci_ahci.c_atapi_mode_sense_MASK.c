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
struct ahci_port {int sense_key; int asc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ATA_I_CMD ; 
 int ATA_I_IN ; 
 void* ATA_SENSE_ILLEGAL_REQUEST ; 
 int ATA_S_DSC ; 
 int ATA_S_ERROR ; 
 int ATA_S_READY ; 
#define  MODEPAGE_CD_CAPABILITIES 129 
#define  MODEPAGE_RW_ERROR_RECOVERY 128 
 int /*<<< orphan*/  FUNC0 (struct ahci_port*,int,int*,int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahci_port*,int,int*,int*,int) ; 

__attribute__((used)) static void
FUNC5(struct ahci_port *p, int slot, uint8_t *cfis)
{
	uint8_t *acmd;
	uint32_t tfd;
	uint8_t pc, code;
	int len;

	acmd = cfis + 0x40;
	len = FUNC1(acmd + 7);
	pc = acmd[2] >> 6;
	code = acmd[2] & 0x3f;

	switch (pc) {
	case 0:
		switch (code) {
		case MODEPAGE_RW_ERROR_RECOVERY:
		{
			uint8_t buf[16];

			if (len > sizeof(buf))
				len = sizeof(buf);

			FUNC3(buf, 0, sizeof(buf));
			FUNC2(buf, 16 - 2);
			buf[2] = 0x70;
			buf[8] = 0x01;
			buf[9] = 16 - 10;
			buf[11] = 0x05;
			FUNC4(p, slot, cfis, buf, len);
			tfd = ATA_S_READY | ATA_S_DSC;
			break;
		}
		case MODEPAGE_CD_CAPABILITIES:
		{
			uint8_t buf[30];

			if (len > sizeof(buf))
				len = sizeof(buf);

			FUNC3(buf, 0, sizeof(buf));
			FUNC2(buf, 30 - 2);
			buf[2] = 0x70;
			buf[8] = 0x2A;
			buf[9] = 30 - 10;
			buf[10] = 0x08;
			buf[12] = 0x71;
			FUNC2(&buf[18], 2);
			FUNC2(&buf[20], 512);
			FUNC4(p, slot, cfis, buf, len);
			tfd = ATA_S_READY | ATA_S_DSC;
			break;
		}
		default:
			goto error;
			break;
		}
		break;
	case 3:
		p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
		p->asc = 0x39;
		tfd = (p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR;
		break;
error:
	case 1:
	case 2:
		p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
		p->asc = 0x24;
		tfd = (p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR;
		break;
	}
	cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
	FUNC0(p, slot, cfis, tfd);
}