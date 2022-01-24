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
struct ib_device {int /*<<< orphan*/  dev; } ;
struct ib_agent_port_private {void** agent; int /*<<< orphan*/  port_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QPT_SMI ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  agent_send_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ib_agent_port_list ; 
 int /*<<< orphan*/  ib_agent_port_list_lock ; 
 void* FUNC3 (struct ib_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_agent_port_private*) ; 
 struct ib_agent_port_private* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC11(struct ib_device *device, int port_num)
{
	struct ib_agent_port_private *port_priv;
	unsigned long flags;
	int ret;

	/* Create new device info */
	port_priv = FUNC6(sizeof *port_priv, GFP_KERNEL);
	if (!port_priv) {
		FUNC2(&device->dev, "No memory for ib_agent_port_private\n");
		ret = -ENOMEM;
		goto error1;
	}

	if (FUNC8(device, port_num)) {
		/* Obtain send only MAD agent for SMI QP */
		port_priv->agent[0] = FUNC3(device, port_num,
							    IB_QPT_SMI, NULL, 0,
							    &agent_send_handler,
							    NULL, NULL, 0);
		if (FUNC0(port_priv->agent[0])) {
			ret = FUNC1(port_priv->agent[0]);
			goto error2;
		}
	}

	/* Obtain send only MAD agent for GSI QP */
	port_priv->agent[1] = FUNC3(device, port_num,
						    IB_QPT_GSI, NULL, 0,
						    &agent_send_handler,
						    NULL, NULL, 0);
	if (FUNC0(port_priv->agent[1])) {
		ret = FUNC1(port_priv->agent[1]);
		goto error3;
	}

	FUNC9(&ib_agent_port_list_lock, flags);
	FUNC7(&port_priv->port_list, &ib_agent_port_list);
	FUNC10(&ib_agent_port_list_lock, flags);

	return 0;

error3:
	if (port_priv->agent[0])
		FUNC4(port_priv->agent[0]);
error2:
	FUNC5(port_priv);
error1:
	return ret;
}