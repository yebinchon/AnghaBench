#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_GIF_DEMUX ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(node_p node)
{
	priv_p priv;

	/* Allocate and initialize private info */
	priv = FUNC1(sizeof(*priv), M_NETGRAPH_GIF_DEMUX, M_WAITOK | M_ZERO);
	priv->node = node;

	FUNC0(node, priv);

	/* Done */
	return (0);
}