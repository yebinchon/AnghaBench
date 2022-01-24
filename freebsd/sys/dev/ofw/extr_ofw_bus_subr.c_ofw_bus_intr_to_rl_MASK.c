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
typedef  int uint32_t ;
struct resource_list {int dummy; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  icells ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int ENOENT ; 
 int ERANGE ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int FUNC0 (scalar_t__,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

int
FUNC10(device_t dev, phandle_t node,
    struct resource_list *rl, int *rlen)
{
	phandle_t iparent;
	uint32_t icells, *intr;
	int err, i, irqnum, nintr, rid;
	boolean_t extended;

	nintr = FUNC0(node, "interrupts",  sizeof(*intr),
	    (void **)&intr);
	if (nintr > 0) {
		iparent = FUNC7(node);
		if (iparent == 0) {
			FUNC5(dev, "No interrupt-parent found, "
			    "assuming direct parent\n");
			iparent = FUNC2(node);
			iparent = FUNC4(iparent);
		}
		if (FUNC3(FUNC1(iparent), 
		    "#interrupt-cells", &icells, sizeof(icells)) == -1) {
			FUNC5(dev, "Missing #interrupt-cells "
			    "property, assuming <1>\n");
			icells = 1;
		}
		if (icells < 1 || icells > nintr) {
			FUNC5(dev, "Invalid #interrupt-cells property "
			    "value <%d>, assuming <1>\n", icells);
			icells = 1;
		}
		extended = false;
	} else {
		nintr = FUNC0(node, "interrupts-extended",
		    sizeof(*intr), (void **)&intr);
		if (nintr <= 0)
			return (0);
		extended = true;
	}
	err = 0;
	rid = 0;
	for (i = 0; i < nintr; i += icells) {
		if (extended) {
			iparent = intr[i++];
			if (FUNC3(FUNC1(iparent), 
			    "#interrupt-cells", &icells, sizeof(icells)) == -1) {
				FUNC5(dev, "Missing #interrupt-cells "
				    "property\n");
				err = ENOENT;
				break;
			}
			if (icells < 1 || (i + icells) > nintr) {
				FUNC5(dev, "Invalid #interrupt-cells "
				    "property value <%d>\n", icells);
				err = ERANGE;
				break;
			}
		}
		irqnum = FUNC8(dev, iparent, icells, &intr[i]);
		FUNC9(rl, SYS_RES_IRQ, rid++, irqnum, irqnum, 1);
	}
	if (rlen != NULL)
		*rlen = rid;
	FUNC6(intr, M_OFWPROP);
	return (err);
}