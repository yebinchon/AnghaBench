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
struct ngsock {int refs; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * node; int /*<<< orphan*/  hmask; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/ * node_p ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_NETGRAPH_SOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ngsock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ngsock *priv)
{
	FUNC3(&priv->mtx, MA_OWNED);

	priv->refs--;

	if (priv->refs == 0) {
		FUNC4(&priv->mtx);
		FUNC2(priv->hash, M_NETGRAPH_SOCK, priv->hmask);
		FUNC1(priv, M_NETGRAPH_SOCK);
		return;
	}

	if ((priv->refs == 1) && (priv->node != NULL)) {
		node_p node = priv->node;

		priv->node = NULL;
		FUNC5(&priv->mtx);
		FUNC0(node);
		FUNC6(node);
	} else
		FUNC5(&priv->mtx);
}