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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  icells ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int ENOENT ; 
 int ERANGE ; 
 int ESRCH ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (scalar_t__,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

int
FUNC10(device_t dev, phandle_t node, int wanted_rid,
    phandle_t *producer, int *ncells, pcell_t **cells)
{
	phandle_t iparent;
	uint32_t icells, *intr;
	int err, i, nintr, rid;
	boolean_t extended;

	nintr = FUNC0(node, "interrupts",  sizeof(*intr),
	    (void **)&intr);
	if (nintr > 0) {
		iparent = FUNC9(node);
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
			return (ESRCH);
		extended = true;
	}
	err = ESRCH;
	rid = 0;
	for (i = 0; i < nintr; i += icells, rid++) {
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
		if (rid == wanted_rid) {
			*cells = FUNC7(icells * sizeof(**cells), M_OFWPROP,
			    M_WAITOK);
			*producer = iparent;
			*ncells= icells;
			FUNC8(*cells, intr + i, icells * sizeof(**cells));
			err = 0;
			break;
		}
	}
	FUNC6(intr, M_OFWPROP);
	return (err);
}