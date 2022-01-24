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
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  module_t ;
typedef  int /*<<< orphan*/ * eventhandler_tag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  GID_WHEEL ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*) ; 
 int /*<<< orphan*/  dev_lookup ; 
 struct cdev* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  pci_devq ; 
 int /*<<< orphan*/  pci_generation ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pci_lookup ; 
 int /*<<< orphan*/  pcicdev ; 

__attribute__((used)) static int
FUNC6(module_t mod, int what, void *arg)
{
	static struct cdev *pci_cdev;
	static eventhandler_tag tag;

	switch (what) {
	case MOD_LOAD:
		FUNC2(&pci_devq);
		pci_generation = 0;
		pci_cdev = FUNC4(&pcicdev, 0, UID_ROOT, GID_WHEEL, 0644,
		    "pci");
		FUNC5();
		tag = FUNC1(dev_lookup, pci_lookup, NULL,
		    1000);
		break;

	case MOD_UNLOAD:
		if (tag != NULL)
			FUNC0(dev_lookup, tag);
		FUNC3(pci_cdev);
		break;
	}

	return (0);
}