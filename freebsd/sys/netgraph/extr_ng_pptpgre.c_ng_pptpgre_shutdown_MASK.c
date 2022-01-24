#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_7__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_6__ {TYPE_2__ uppersess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  sessions ; 

__attribute__((used)) static int
FUNC6(node_p node)
{
	const priv_p priv = FUNC1(node);

	/* Reset node (stops timers) */
	FUNC5(&priv->uppersess);

	FUNC0(&priv->uppersess, sessions);
	FUNC4(&priv->uppersess.mtx);

	FUNC3(priv, M_NETGRAPH);

	/* Decrement ref count */
	FUNC2(node);
	return (0);
}