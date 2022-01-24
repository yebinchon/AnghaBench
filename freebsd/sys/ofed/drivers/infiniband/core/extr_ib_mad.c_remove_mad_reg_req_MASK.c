#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct ib_mad_port_private {TYPE_2__* version; } ;
struct ib_mad_mgmt_vendor_class_table {struct ib_mad_mgmt_vendor_class_table** vendor_class; int /*<<< orphan*/ * oui; struct ib_mad_mgmt_vendor_class_table** method_table; } ;
struct ib_mad_mgmt_vendor_class {struct ib_mad_mgmt_vendor_class** vendor_class; int /*<<< orphan*/ * oui; struct ib_mad_mgmt_vendor_class** method_table; } ;
struct ib_mad_mgmt_method_table {struct ib_mad_mgmt_method_table** vendor_class; int /*<<< orphan*/ * oui; struct ib_mad_mgmt_method_table** method_table; } ;
struct ib_mad_mgmt_class_table {struct ib_mad_mgmt_class_table** vendor_class; int /*<<< orphan*/ * oui; struct ib_mad_mgmt_class_table** method_table; } ;
struct ib_mad_agent_private {TYPE_3__* reg_req; TYPE_1__* qp_info; } ;
struct TYPE_6__ {size_t mgmt_class_version; int /*<<< orphan*/  oui; int /*<<< orphan*/  mgmt_class; } ;
struct TYPE_5__ {struct ib_mad_mgmt_vendor_class_table* vendor; struct ib_mad_mgmt_vendor_class_table* class; } ;
struct TYPE_4__ {struct ib_mad_port_private* port_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_mad_mgmt_vendor_class_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_mgmt_vendor_class_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_mgmt_vendor_class_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_mgmt_vendor_class_table*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ib_mad_mgmt_vendor_class_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_mgmt_vendor_class_table*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_mad_mgmt_vendor_class_table*,struct ib_mad_agent_private*) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct ib_mad_agent_private *agent_priv)
{
	struct ib_mad_port_private *port_priv;
	struct ib_mad_mgmt_class_table *class;
	struct ib_mad_mgmt_method_table *method;
	struct ib_mad_mgmt_vendor_class_table *vendor;
	struct ib_mad_mgmt_vendor_class *vendor_class;
	int index;
	u8 mgmt_class;

	/*
	 * Was MAD registration request supplied
	 * with original registration ?
	 */
	if (!agent_priv->reg_req) {
		goto out;
	}

	port_priv = agent_priv->qp_info->port_priv;
	mgmt_class = FUNC4(agent_priv->reg_req->mgmt_class);
	class = port_priv->version[
			agent_priv->reg_req->mgmt_class_version].class;
	if (!class)
		goto vendor_check;

	method = class->method_table[mgmt_class];
	if (method) {
		/* Remove any methods for this mad agent */
		FUNC9(method, agent_priv);
		/* Now, check to see if there are any methods still in use */
		if (!FUNC1(method)) {
			/* If not, release management method table */
			FUNC7(method);
			class->method_table[mgmt_class] = NULL;
			/* Any management classes left ? */
			if (!FUNC0(class)) {
				/* If not, release management class table */
				FUNC7(class);
				port_priv->version[
					agent_priv->reg_req->
					mgmt_class_version].class = NULL;
			}
		}
	}

vendor_check:
	if (!FUNC6(mgmt_class))
		goto out;

	/* normalize mgmt_class to vendor range 2 */
	mgmt_class = FUNC10(agent_priv->reg_req->mgmt_class);
	vendor = port_priv->version[
			agent_priv->reg_req->mgmt_class_version].vendor;

	if (!vendor)
		goto out;

	vendor_class = vendor->vendor_class[mgmt_class];
	if (vendor_class) {
		index = FUNC5(vendor_class, agent_priv->reg_req->oui);
		if (index < 0)
			goto out;
		method = vendor_class->method_table[index];
		if (method) {
			/* Remove any methods for this mad agent */
			FUNC9(method, agent_priv);
			/*
			 * Now, check to see if there are
			 * any methods still in use
			 */
			if (!FUNC1(method)) {
				/* If not, release management method table */
				FUNC7(method);
				vendor_class->method_table[index] = NULL;
				FUNC8(vendor_class->oui[index], 0, 3);
				/* Any OUIs left ? */
				if (!FUNC2(vendor_class)) {
					/* If not, release vendor class table */
					FUNC7(vendor_class);
					vendor->vendor_class[mgmt_class] = NULL;
					/* Any other vendor classes left ? */
					if (!FUNC3(vendor)) {
						FUNC7(vendor);
						port_priv->version[
							agent_priv->reg_req->
							mgmt_class_version].
							vendor = NULL;
					}
				}
			}
		}
	}

out:
	return;
}