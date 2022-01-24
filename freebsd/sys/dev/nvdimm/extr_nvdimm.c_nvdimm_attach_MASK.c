#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvdimm_dev {int /*<<< orphan*/  nv_flush_addr_cnt; int /*<<< orphan*/  nv_flush_addr; int /*<<< orphan*/  nv_handle; int /*<<< orphan*/  nv_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  Header; } ;
typedef  TYPE_1__ ACPI_TABLE_NFIT ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_NFIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ bootverbose ; 
 struct nvdimm_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nvdimm_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvdimm_dev*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct nvdimm_dev *nv;
	ACPI_TABLE_NFIT *nfitbl;
	ACPI_HANDLE handle;
	ACPI_STATUS status;
	int error;

	nv = FUNC5(dev);
	handle = FUNC7(dev);
	FUNC3(handle != NULL);
	nv->nv_dev = dev;
	nv->nv_handle = FUNC8(dev);

	status = FUNC1(ACPI_SIG_NFIT, 1, (ACPI_TABLE_HEADER **)&nfitbl);
	if (FUNC0(status)) {
		if (bootverbose)
			FUNC6(dev, "cannot get NFIT\n");
		return (ENXIO);
	}
	FUNC4(nfitbl, nv->nv_handle, &nv->nv_flush_addr,
	    &nv->nv_flush_addr_cnt);
	FUNC2(&nfitbl->Header);
	error = FUNC9(nv);
	if (error == 0) {
		/*
		 * Ignoring errors reading labels. Not all NVDIMMs
		 * support labels and namespaces.
		 */
		FUNC10(nv);
	}
	return (0);
}