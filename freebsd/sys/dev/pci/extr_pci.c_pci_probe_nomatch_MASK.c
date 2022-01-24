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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {char* desc; scalar_t__ class; int subclass; int report; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pci_nomatch_tab ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 

void
FUNC10(device_t dev, device_t child)
{
	int i, report;
	const char *cp, *scp;
	char *device;

	/*
	 * Look for a listing for this device in a loaded device database.
	 */
	report = 1;
	if ((device = FUNC4(child)) != NULL) {
		FUNC1(dev, "<%s>", device);
		FUNC2(device, M_DEVBUF);
	} else {
		/*
		 * Scan the class/subclass descriptions for a general
		 * description.
		 */
		cp = "unknown";
		scp = NULL;
		for (i = 0; pci_nomatch_tab[i].desc != NULL; i++) {
			if (pci_nomatch_tab[i].class == FUNC5(child)) {
				if (pci_nomatch_tab[i].subclass == -1) {
					cp = pci_nomatch_tab[i].desc;
					report = pci_nomatch_tab[i].report;
				} else if (pci_nomatch_tab[i].subclass ==
				    FUNC8(child)) {
					scp = pci_nomatch_tab[i].desc;
					report = pci_nomatch_tab[i].report;
				}
			}
		}
		if (report || bootverbose) {
			FUNC1(dev, "<%s%s%s>",
			    cp ? cp : "",
			    ((cp != NULL) && (scp != NULL)) ? ", " : "",
			    scp ? scp : "");
		}
	}
	if (report || bootverbose) {
		FUNC9(" at device %d.%d (no driver attached)\n",
		    FUNC7(child), FUNC6(child));
	}
	FUNC3(child, FUNC0(child), 1);
}