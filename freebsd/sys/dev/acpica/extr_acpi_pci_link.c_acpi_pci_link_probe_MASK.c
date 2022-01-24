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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  descr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pci_link_ids ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	char descr[28], name[12];
	int rv;

	/*
	 * We explicitly do not check _STA since not all systems set it to
	 * sensible values.
	 */
	if (FUNC2("pci_link"))
	    return (ENXIO);
	rv = FUNC0(FUNC5(dev), dev, pci_link_ids, NULL);
	if (rv > 0)
	  return (rv);
	
	if (FUNC1(FUNC4(FUNC3(dev), name,
	    sizeof(name)))) {
		FUNC9(descr, sizeof(descr), "ACPI PCI Link %s", name);
		FUNC8(dev, descr);
	} else
		FUNC7(dev, "ACPI PCI Link");
	FUNC6(dev);
	return (rv);
}