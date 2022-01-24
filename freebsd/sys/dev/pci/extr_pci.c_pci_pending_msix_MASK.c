#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int ;
struct pcicfg_msix {int msix_table_len; int msix_pba_offset; int /*<<< orphan*/  msix_pba_res; } ;
struct TYPE_2__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev, u_int index)
{
	struct pci_devinfo *dinfo = FUNC2(dev);
	struct pcicfg_msix *msix = &dinfo->cfg.msix;
	uint32_t offset, bit;

	FUNC0(msix->msix_table_len > index, ("bogus index"));
	offset = msix->msix_pba_offset + (index / 32) * 4;
	bit = 1 << index % 32;
	return (FUNC1(msix->msix_pba_res, offset) & bit);
}