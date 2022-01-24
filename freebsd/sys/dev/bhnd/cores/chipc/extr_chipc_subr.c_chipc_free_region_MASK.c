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
struct chipc_softc {int /*<<< orphan*/  dev; } ;
struct chipc_region {scalar_t__ cr_refs; int /*<<< orphan*/ * cr_res; int /*<<< orphan*/  cr_res_rid; int /*<<< orphan*/  cr_region_num; int /*<<< orphan*/  cr_port_num; int /*<<< orphan*/  cr_port_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_region*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct chipc_softc *sc, struct chipc_region *cr)
{
	FUNC0(cr->cr_refs == 0,
	    ("chipc %s%u.%u region has %u active references",
	     FUNC1(cr->cr_port_type), cr->cr_port_num,
	     cr->cr_region_num, cr->cr_refs));

	if (cr->cr_res != NULL) {
		FUNC2(sc->dev, SYS_RES_MEMORY, cr->cr_res_rid,
		    cr->cr_res);
	}

	FUNC3(cr, M_BHND);
}