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
struct ib_mad_port_private {int /*<<< orphan*/  wq; int /*<<< orphan*/  reg_lock; } ;
struct ib_mad_agent_private {struct ib_mad_agent_private* reg_req; int /*<<< orphan*/  comp; int /*<<< orphan*/  agent_list; int /*<<< orphan*/  timed_work; TYPE_1__* qp_info; } ;
struct TYPE_2__ {struct ib_mad_port_private* port_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_agent_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ib_mad_agent_private *mad_agent_priv)
{
	struct ib_mad_port_private *port_priv;
	unsigned long flags;

	/* Note that we could still be handling received MADs */

	/*
	 * Canceling all sends results in dropping received response
	 * MADs, preventing us from queuing additional work
	 */
	FUNC1(mad_agent_priv);
	port_priv = mad_agent_priv->qp_info->port_priv;
	FUNC0(&mad_agent_priv->timed_work);

	FUNC8(&port_priv->reg_lock, flags);
	FUNC7(mad_agent_priv);
	FUNC6(&mad_agent_priv->agent_list);
	FUNC9(&port_priv->reg_lock, flags);

	FUNC3(port_priv->wq);
	FUNC4(mad_agent_priv);

	FUNC2(mad_agent_priv);
	FUNC10(&mad_agent_priv->comp);

	FUNC5(mad_agent_priv->reg_req);
	FUNC5(mad_agent_priv);
}