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
struct ng_atmllc_priv {int dummy; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH ; 
 struct ng_atmllc_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_atmllc_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(node_p node)
{
	struct	ng_atmllc_priv *priv;

	priv = FUNC0(node);

	FUNC2(priv, M_NETGRAPH);

	FUNC1(node);

	return (0);
}