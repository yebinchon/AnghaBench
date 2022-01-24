#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvdimm_root_dev {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  Header; } ;
typedef  TYPE_1__ ACPI_TABLE_NFIT ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_NFIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct nvdimm_root_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (struct nvdimm_root_dev*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct nvdimm_root_dev *root;
	ACPI_TABLE_NFIT *nfitbl;
	ACPI_STATUS status;
	int error;

	status = FUNC1(ACPI_SIG_NFIT, 1, (ACPI_TABLE_HEADER **)&nfitbl);
	if (FUNC0(status)) {
		FUNC5(dev, "cannot get NFIT\n");
		return (ENXIO);
	}
	error = FUNC6(dev, nfitbl);
	if (error != 0)
		return (error);
	error = FUNC3(dev);
	if (error != 0)
		return (error);
	root = FUNC4(dev);
	error = FUNC7(root, nfitbl);
	FUNC2(&nfitbl->Header);
	return (error);
}