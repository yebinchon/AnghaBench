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
struct pci_conf {int pc_vendor; int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 int PCIR_VENDOR_DATA ; 
 int PCIR_VENDOR_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC2(int fd, struct pci_conf *p, uint8_t ptr)
{
	uint8_t length;

	length = FUNC1(fd, &p->pc_sel, ptr + PCIR_VENDOR_LENGTH, 1);
	FUNC0("vendor (length %d)", length);
	if (p->pc_vendor == 0x8086) {
		/* Intel */
		uint8_t version;

		version = FUNC1(fd, &p->pc_sel, ptr + PCIR_VENDOR_DATA,
		    1);
		FUNC0(" Intel cap %d version %d", version >> 4, version & 0xf);
		if (version >> 4 == 1 && length == 12) {
			/* Feature Detection */
			uint32_t fvec;
			int comma;

			comma = 0;
			fvec = FUNC1(fd, &p->pc_sel, ptr +
			    PCIR_VENDOR_DATA + 5, 4);
			FUNC0("\n\t\t features:");
			if (fvec & (1 << 0)) {
				FUNC0(" AMT");
				comma = 1;
			}
			fvec = FUNC1(fd, &p->pc_sel, ptr +
			    PCIR_VENDOR_DATA + 1, 4);
			if (fvec & (1 << 21)) {
				FUNC0("%s Quick Resume", comma ? "," : "");
				comma = 1;
			}
			if (fvec & (1 << 18)) {
				FUNC0("%s SATA RAID-5", comma ? "," : "");
				comma = 1;
			}
			if (fvec & (1 << 9)) {
				FUNC0("%s Mobile", comma ? "," : "");
				comma = 1;
			}
			if (fvec & (1 << 7)) {
				FUNC0("%s 6 PCI-e x1 slots", comma ? "," : "");
				comma = 1;
			} else {
				FUNC0("%s 4 PCI-e x1 slots", comma ? "," : "");
				comma = 1;
			}
			if (fvec & (1 << 5)) {
				FUNC0("%s SATA RAID-0/1/10", comma ? "," : "");
				comma = 1;
			}
			if (fvec & (1 << 3))
				FUNC0(", SATA AHCI");
		}
	}
}