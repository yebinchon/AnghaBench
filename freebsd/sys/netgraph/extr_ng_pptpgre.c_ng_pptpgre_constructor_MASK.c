#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_6__ {int /*<<< orphan*/  reorderTimer; scalar_t__ roq_len; int /*<<< orphan*/  roq; int /*<<< orphan*/  node; int /*<<< orphan*/  rackTimer; int /*<<< orphan*/  sackTimer; int /*<<< orphan*/  mtx; } ;
struct TYPE_5__ {TYPE_4__ uppersess; int /*<<< orphan*/ * sesshash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int SESSHASHSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sessions ; 

__attribute__((used)) static int
FUNC7(node_p node)
{
	priv_p priv;
	int i;

	/* Allocate private structure */
	priv = FUNC4(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);

	FUNC2(node, priv);

	/* Initialize state */
	FUNC5(&priv->uppersess.mtx, "ng_pptp", NULL, MTX_DEF);
	FUNC6(&priv->uppersess.sackTimer);
	FUNC6(&priv->uppersess.rackTimer);
	priv->uppersess.node = node;

	FUNC3(&priv->uppersess.roq);
	priv->uppersess.roq_len = 0;
	FUNC6(&priv->uppersess.reorderTimer);

	for (i = 0; i < SESSHASHSIZE; i++)
	    FUNC0(&priv->sesshash[i]);

	FUNC1(&priv->sesshash[0], &priv->uppersess, sessions);

	/* Done */
	return (0);
}