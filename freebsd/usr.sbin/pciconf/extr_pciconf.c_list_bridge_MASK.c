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
struct pci_conf {int pc_hdr; } ;

/* Variables and functions */
 int PCIM_HDRTYPE ; 
#define  PCIM_HDRTYPE_BRIDGE 129 
#define  PCIM_HDRTYPE_CARDBUS 128 
 int /*<<< orphan*/  PCIR_SECBUS_1 ; 
 int /*<<< orphan*/  PCIR_SECBUS_2 ; 
 int /*<<< orphan*/  PCIR_SUBBUS_1 ; 
 int /*<<< orphan*/  PCIR_SUBBUS_2 ; 
 int /*<<< orphan*/  FUNC0 (int,struct pci_conf*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct pci_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct pci_conf*) ; 

__attribute__((used)) static void
FUNC3(int fd, struct pci_conf *p)
{

	switch (p->pc_hdr & PCIM_HDRTYPE) {
	case PCIM_HDRTYPE_BRIDGE:
		FUNC1(fd, p, PCIR_SECBUS_1, PCIR_SUBBUS_1);
		FUNC0(fd, p);
		break;
	case PCIM_HDRTYPE_CARDBUS:
		FUNC1(fd, p, PCIR_SECBUS_2, PCIR_SUBBUS_2);
		FUNC2(fd, p);
		break;
	}
}