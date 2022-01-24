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
struct vmctx {int dummy; } ;
struct pci_devinst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIC_BRIDGE ; 
 int /*<<< orphan*/  PCIEM_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  PCIM_HDRTYPE_NORMAL ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_HDRTYPE ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  PCIS_BRIDGE_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{

	/* config space */
	FUNC1(pi, PCIR_VENDOR, 0x1275);	/* NetApp */
	FUNC1(pi, PCIR_DEVICE, 0x1275);	/* NetApp */
	FUNC2(pi, PCIR_HDRTYPE, PCIM_HDRTYPE_NORMAL);
	FUNC2(pi, PCIR_CLASS, PCIC_BRIDGE);
	FUNC2(pi, PCIR_SUBCLASS, PCIS_BRIDGE_HOST);

	FUNC0(pi, PCIEM_TYPE_ROOT_PORT);

	return (0);
}