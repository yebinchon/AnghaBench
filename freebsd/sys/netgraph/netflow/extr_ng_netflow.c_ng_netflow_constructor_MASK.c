#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  fib_export_p ;
struct TYPE_8__ {int maxfibs; int /*<<< orphan*/  exp_callout; TYPE_2__* ifaces; int /*<<< orphan*/  nfinfo_act_t; int /*<<< orphan*/  nfinfo_inact_t; int /*<<< orphan*/  node; void* fib_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  conf; } ;
struct TYPE_7__ {TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_TIMEOUT ; 
 int /*<<< orphan*/  INACTIVE_TIMEOUT ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NG_NETFLOW_CONF_INGRESS ; 
 int NG_NETFLOW_MAXIFACES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int rt_numfibs ; 

__attribute__((used)) static int
FUNC4(node_p node)
{
	priv_p priv;
	int i;

	/* Initialize private data */
	priv = FUNC2(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);

	/* Initialize fib data */
	priv->maxfibs = rt_numfibs;
	priv->fib_data = FUNC2(sizeof(fib_export_p) * priv->maxfibs,
	    M_NETGRAPH, M_WAITOK | M_ZERO);

	/* Make node and its data point at each other */
	FUNC0(node, priv);
	priv->node = node;

	/* Initialize timeouts to default values */
	priv->nfinfo_inact_t = INACTIVE_TIMEOUT;
	priv->nfinfo_act_t = ACTIVE_TIMEOUT;

	/* Set default config */
	for (i = 0; i < NG_NETFLOW_MAXIFACES; i++)
		priv->ifaces[i].info.conf = NG_NETFLOW_CONF_INGRESS;

	/* Initialize callout handle */
	FUNC1(&priv->exp_callout, 1);

	/* Allocate memory and set up flow cache */
	FUNC3(priv);

	return (0);
}