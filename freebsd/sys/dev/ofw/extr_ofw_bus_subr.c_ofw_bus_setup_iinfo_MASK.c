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
struct ofw_bus_iinfo {int opi_addrc; scalar_t__ opi_imapsz; int /*<<< orphan*/  opi_imapmsk; int /*<<< orphan*/  opi_imap; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  addrc ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(phandle_t node, struct ofw_bus_iinfo *ii, int intrsz)
{
	pcell_t addrc;
	int msksz;

	if (FUNC0(node, "#address-cells", &addrc, sizeof(addrc)) == -1)
		addrc = 2;
	ii->opi_addrc = addrc * sizeof(pcell_t);

	ii->opi_imapsz = FUNC1(node, "interrupt-map",
	    (void **)&ii->opi_imap);
	if (ii->opi_imapsz > 0) {
		msksz = FUNC1(node, "interrupt-map-mask",
		    (void **)&ii->opi_imapmsk);
		/*
		 * Failure to get the mask is ignored; a full mask is used
		 * then.  We barf on bad mask sizes, however.
		 */
		if (msksz != -1 && msksz != ii->opi_addrc + intrsz)
			FUNC2("ofw_bus_setup_iinfo: bad interrupt-map-mask "
			    "property!");
	}
}