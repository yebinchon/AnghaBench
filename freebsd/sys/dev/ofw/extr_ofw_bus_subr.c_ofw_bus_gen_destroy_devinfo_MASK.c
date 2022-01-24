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
struct ofw_bus_devinfo {int /*<<< orphan*/ * obd_status; int /*<<< orphan*/ * obd_type; int /*<<< orphan*/ * obd_name; int /*<<< orphan*/ * obd_model; int /*<<< orphan*/ * obd_compat; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC1(struct ofw_bus_devinfo *obd)
{

	if (obd == NULL)
		return;
	if (obd->obd_compat != NULL)
		FUNC0(obd->obd_compat, M_OFWPROP);
	if (obd->obd_model != NULL)
		FUNC0(obd->obd_model, M_OFWPROP);
	if (obd->obd_name != NULL)
		FUNC0(obd->obd_name, M_OFWPROP);
	if (obd->obd_type != NULL)
		FUNC0(obd->obd_type, M_OFWPROP);
	if (obd->obd_status != NULL)
		FUNC0(obd->obd_status, M_OFWPROP);
}