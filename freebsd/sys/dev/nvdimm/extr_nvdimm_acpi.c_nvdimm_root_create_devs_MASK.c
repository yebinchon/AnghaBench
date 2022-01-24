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
typedef  int /*<<< orphan*/  nfit_handle_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  ACPI_TABLE_NFIT ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,char*,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_NVDIMM_ACPI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NVDIMM_ROOT_IVAR_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,uintptr_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 uintptr_t* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev, ACPI_TABLE_NFIT *nfitbl)
{
	ACPI_HANDLE root_handle, dimm_handle;
	device_t child;
	nfit_handle_t *dimm_ids, *dimm;
	uintptr_t *ivars;
	int num_dimm_ids;

	root_handle = FUNC1(dev);
	FUNC2(nfitbl, &dimm_ids, &num_dimm_ids);
	for (dimm = dimm_ids; dimm < dimm_ids + num_dimm_ids; dimm++) {
		dimm_handle = FUNC6(root_handle, *dimm);
		if (dimm_handle == NULL)
			continue;

		child = FUNC0(dev, 100, "nvdimm", -1);
		if (child == NULL) {
			FUNC3(dev, "failed to create nvdimm\n");
			return (ENXIO);
		}
		ivars = FUNC7(NVDIMM_ROOT_IVAR_MAX, sizeof(uintptr_t),
		    M_NVDIMM_ACPI, M_ZERO | M_WAITOK);
		FUNC4(child, ivars);
		FUNC8(child, dimm_handle);
		FUNC9(child, *dimm);
	}
	FUNC5(dimm_ids, M_NVDIMM_ACPI);
	return (0);
}