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
typedef  scalar_t__ u_short ;
typedef  scalar_t__ u_char ;
struct sym_pci_chip {scalar_t__ device_id; scalar_t__ revision_id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ PCI_VENDOR_NCR ; 
 int FUNC0 (struct sym_pci_chip*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sym_pci_chip* sym_pci_dev_table ; 

__attribute__((used)) static const struct sym_pci_chip *
FUNC4(device_t dev)
{
	const struct	sym_pci_chip *chip;
	int	i;
	u_short	device_id;
	u_char	revision;

	if (FUNC3(dev) != PCI_VENDOR_NCR)
		return NULL;

	device_id = FUNC1(dev);
	revision  = FUNC2(dev);

	for (i = 0; i < FUNC0(sym_pci_dev_table); i++) {
		chip = &sym_pci_dev_table[i];
		if (device_id != chip->device_id)
			continue;
		if (revision > chip->revision_id)
			continue;
		return chip;
	}

	return NULL;
}