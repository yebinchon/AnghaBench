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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct pcicfg_msix {int msix_table_len; int msix_table_offset; int /*<<< orphan*/  msix_table_res; } ;
struct TYPE_2__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, u_int index, uint64_t address, uint32_t data)
{
	struct pci_devinfo *dinfo = FUNC2(dev);
	struct pcicfg_msix *msix = &dinfo->cfg.msix;
	uint32_t offset;

	FUNC0(msix->msix_table_len > index, ("bogus index"));
	offset = msix->msix_table_offset + index * 16;
	FUNC1(msix->msix_table_res, offset, address & 0xffffffff);
	FUNC1(msix->msix_table_res, offset + 4, address >> 32);
	FUNC1(msix->msix_table_res, offset + 8, data);
}