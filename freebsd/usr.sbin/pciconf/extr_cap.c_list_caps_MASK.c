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
typedef  int uint16_t ;
struct pci_conf {int pc_hdr; int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 int PCICAP_ID ; 
 int PCICAP_NEXTPTR ; 
 int PCIM_HDRTYPE ; 
#define  PCIM_HDRTYPE_BRIDGE 144 
#define  PCIM_HDRTYPE_CARDBUS 143 
#define  PCIM_HDRTYPE_NORMAL 142 
 int PCIM_STATUS_CAPPRESENT ; 
 int PCIR_CAP_PTR ; 
 int PCIR_CAP_PTR_2 ; 
 int PCIR_STATUS ; 
#define  PCIY_AGP 141 
#define  PCIY_DEBUG 140 
#define  PCIY_EA 139 
#define  PCIY_EXPRESS 138 
#define  PCIY_HT 137 
#define  PCIY_MSI 136 
#define  PCIY_MSIX 135 
#define  PCIY_PCIAF 134 
#define  PCIY_PCIX 133 
#define  PCIY_PMG 132 
#define  PCIY_SATA 131 
#define  PCIY_SUBVENDOR 130 
#define  PCIY_VENDOR 129 
#define  PCIY_VPD 128 
 int /*<<< orphan*/  FUNC0 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,struct pci_conf*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct pci_conf*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 void* FUNC17 (int,int /*<<< orphan*/ *,int,int) ; 

void
FUNC18(int fd, struct pci_conf *p)
{
	int express;
	uint16_t sta;
	uint8_t ptr, cap;

	/* Are capabilities present for this device? */
	sta = FUNC17(fd, &p->pc_sel, PCIR_STATUS, 2);
	if (!(sta & PCIM_STATUS_CAPPRESENT))
		return;

	switch (p->pc_hdr & PCIM_HDRTYPE) {
	case PCIM_HDRTYPE_NORMAL:
	case PCIM_HDRTYPE_BRIDGE:
		ptr = PCIR_CAP_PTR;
		break;
	case PCIM_HDRTYPE_CARDBUS:
		ptr = PCIR_CAP_PTR_2;
		break;
	default:
		FUNC14(1, "list_caps: bad header type");
	}

	/* Walk the capability list. */
	express = 0;
	ptr = FUNC17(fd, &p->pc_sel, ptr, 1);
	while (ptr != 0 && ptr != 0xff) {
		cap = FUNC17(fd, &p->pc_sel, ptr + PCICAP_ID, 1);
		FUNC16("    cap %02x[%02x] = ", cap, ptr);
		switch (cap) {
		case PCIY_PMG:
			FUNC9(fd, p, ptr);
			break;
		case PCIY_AGP:
			FUNC0(fd, p, ptr);
			break;
		case PCIY_VPD:
			FUNC13(fd, p, ptr);
			break;
		case PCIY_MSI:
			FUNC5(fd, p, ptr);
			break;
		case PCIY_PCIX:
			FUNC8(fd, p, ptr);
			break;
		case PCIY_HT:
			FUNC4(fd, p, ptr);
			break;
		case PCIY_VENDOR:
			FUNC12(fd, p, ptr);
			break;
		case PCIY_DEBUG:
			FUNC1(fd, p, ptr);
			break;
		case PCIY_SUBVENDOR:
			FUNC11(fd, p, ptr);
			break;
		case PCIY_EXPRESS:
			express = 1;
			FUNC3(fd, p, ptr);
			break;
		case PCIY_MSIX:
			FUNC6(fd, p, ptr);
			break;
		case PCIY_SATA:
			FUNC10(fd, p, ptr);
			break;
		case PCIY_PCIAF:
			FUNC7(fd, p, ptr);
			break;
		case PCIY_EA:
			FUNC2(fd, p, ptr);
			break;
		default:
			FUNC16("unknown");
			break;
		}
		FUNC16("\n");
		ptr = FUNC17(fd, &p->pc_sel, ptr + PCICAP_NEXTPTR, 1);
	}

	if (express)
		FUNC15(fd, p);
}