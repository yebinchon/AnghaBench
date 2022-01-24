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
struct ib_agent_port_private {scalar_t__* agent; int /*<<< orphan*/  port_list; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ib_agent_port_private* FUNC0 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ib_agent_port_list_lock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_agent_port_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct ib_device *device, int port_num)
{
	struct ib_agent_port_private *port_priv;
	unsigned long flags;

	FUNC5(&ib_agent_port_list_lock, flags);
	port_priv = FUNC0(device, port_num);
	if (port_priv == NULL) {
		FUNC6(&ib_agent_port_list_lock, flags);
		FUNC1(&device->dev, "Port %d not found\n", port_num);
		return -ENODEV;
	}
	FUNC4(&port_priv->port_list);
	FUNC6(&ib_agent_port_list_lock, flags);

	FUNC2(port_priv->agent[1]);
	if (port_priv->agent[0])
		FUNC2(port_priv->agent[0]);

	FUNC3(port_priv);
	return 0;
}