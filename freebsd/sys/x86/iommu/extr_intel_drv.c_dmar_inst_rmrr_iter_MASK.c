#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint16_t ;
struct inst_rmrr_iter_args {struct dmar_unit* dmar; } ;
struct dmar_unit {scalar_t__ segment; int unit; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_9__ {int Length; scalar_t__ EntryType; int /*<<< orphan*/  Bus; } ;
struct TYPE_8__ {scalar_t__ Type; } ;
struct TYPE_6__ {int Length; } ;
struct TYPE_7__ {scalar_t__ Segment; scalar_t__ EndAddress; scalar_t__ BaseAddress; TYPE_1__ Header; } ;
typedef  TYPE_2__ ACPI_DMAR_RESERVED_MEMORY ;
typedef  int /*<<< orphan*/  ACPI_DMAR_PCI_PATH ;
typedef  TYPE_3__ ACPI_DMAR_HEADER ;
typedef  TYPE_4__ ACPI_DMAR_DEVICE_SCOPE ;

/* Variables and functions */
 scalar_t__ ACPI_DMAR_SCOPE_TYPE_ENDPOINT ; 
 scalar_t__ ACPI_DMAR_TYPE_RESERVED_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct dmar_unit* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct dmar_unit* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(ACPI_DMAR_HEADER *dmarh, void *arg)
{
	const ACPI_DMAR_RESERVED_MEMORY *resmem;
	const ACPI_DMAR_DEVICE_SCOPE *devscope;
	struct inst_rmrr_iter_args *iria;
	const char *ptr, *ptrend;
	device_t dev;
	struct dmar_unit *unit;
	int dev_path_len;
	uint16_t rid;

	iria = arg;

	if (dmarh->Type != ACPI_DMAR_TYPE_RESERVED_MEMORY)
		return (1);

	resmem = (ACPI_DMAR_RESERVED_MEMORY *)dmarh;
	if (resmem->Segment != iria->dmar->segment)
		return (1);

	ptr = (const char *)resmem + sizeof(*resmem);
	ptrend = (const char *)resmem + resmem->Header.Length;
	for (;;) {
		if (ptr >= ptrend)
			break;
		devscope = (const ACPI_DMAR_DEVICE_SCOPE *)ptr;
		ptr += devscope->Length;
		/* XXXKIB bridge */
		if (devscope->EntryType != ACPI_DMAR_SCOPE_TYPE_ENDPOINT)
			continue;
		rid = 0;
		dev_path_len = (devscope->Length -
		    sizeof(ACPI_DMAR_DEVICE_SCOPE)) / 2;
		dev = FUNC4(resmem->Segment, dev_path_len,
		    devscope->Bus,
		    (const ACPI_DMAR_PCI_PATH *)(devscope + 1), &rid);
		if (dev == NULL) {
			if (bootverbose) {
				FUNC6("dmar%d no dev found for RMRR "
				    "[%#jx, %#jx] rid %#x scope path ",
				     iria->dmar->unit,
				     (uintmax_t)resmem->BaseAddress,
				     (uintmax_t)resmem->EndAddress,
				     rid);
				FUNC5(devscope->Bus, dev_path_len,
				    (const ACPI_DMAR_PCI_PATH *)(devscope + 1));
				FUNC6("\n");
			}
			unit = FUNC1(resmem->Segment,
			    devscope->Bus,
			    (const ACPI_DMAR_PCI_PATH *)(devscope + 1),
			    dev_path_len);
			if (iria->dmar != unit)
				continue;
			FUNC2(iria->dmar, rid,
			    resmem->Segment, devscope->Bus, 
			    (const ACPI_DMAR_PCI_PATH *)(devscope + 1),
			    dev_path_len, false, true);
		} else {
			unit = FUNC0(dev, false);
			if (iria->dmar != unit)
				continue;
			FUNC3(iria->dmar, dev, true);
		}
	}

	return (1);

}