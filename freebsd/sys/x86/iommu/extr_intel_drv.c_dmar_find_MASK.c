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
struct dmar_unit {int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  ACPI_DMAR_PCI_PATH ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dmar_unit* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int) ; 
 int dmar_devcnt ; 
 int /*<<< orphan*/ ** dmar_devs ; 
 scalar_t__ FUNC7 (struct dmar_unit*,int,int,int /*<<< orphan*/ *,int,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

struct dmar_unit *
FUNC14(device_t dev, bool verbose)
{
	device_t dmar_dev;
	struct dmar_unit *unit;
	const char *banner;
	int i, dev_domain, dev_busno, dev_path_len;

	/*
	 * This function can only handle PCI(e) devices.
	 */
	if (FUNC1(FUNC2(dev)) !=
	    FUNC0("pci"))
		return (NULL);

	dmar_dev = NULL;
	dev_domain = FUNC10(dev);
	dev_path_len = FUNC5(dev);
	ACPI_DMAR_PCI_PATH dev_path[dev_path_len];
	FUNC6(dev, &dev_busno, dev_path, dev_path_len);
	banner = "";

	for (i = 0; i < dmar_devcnt; i++) {
		if (dmar_devs[i] == NULL)
			continue;
		unit = FUNC3(dmar_devs[i]);
		if (FUNC7(unit, dev_domain, dev_busno,
		    dev_path, dev_path_len, &banner))
			break;
	}
	if (i == dmar_devcnt)
		return (NULL);

	if (verbose) {
		FUNC4(dev, "pci%d:%d:%d:%d matched dmar%d by %s",
		    dev_domain, FUNC9(dev), FUNC12(dev),
		    FUNC11(dev), unit->unit, banner);
		FUNC13(" scope path ");
		FUNC8(dev_busno, dev_path_len, dev_path);
		FUNC13("\n");
	}
	return (unit);
}