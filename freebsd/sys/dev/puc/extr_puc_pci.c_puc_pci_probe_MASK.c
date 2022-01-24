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
struct puc_cfg {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int PCIM_HDRTYPE ; 
 int /*<<< orphan*/  PCIR_HDRTYPE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct puc_cfg const*) ; 
 int /*<<< orphan*/  puc_pci_devices ; 
 struct puc_cfg* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const struct puc_cfg *desc;

	if ((FUNC0(dev, PCIR_HDRTYPE, 1) & PCIM_HDRTYPE) != 0)
		return (ENXIO);

	desc = FUNC2(dev, puc_pci_devices);
	if (desc == NULL)
		return (ENXIO);
	return (FUNC1(dev, desc));
}