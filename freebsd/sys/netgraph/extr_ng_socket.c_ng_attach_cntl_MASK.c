#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct ngsock {int /*<<< orphan*/  refs; TYPE_1__* node; struct ngpcb* ctlsock; int /*<<< orphan*/  mtx; int /*<<< orphan*/  hmask; int /*<<< orphan*/  hash; } ;
struct ngpcb {int /*<<< orphan*/  node_id; struct ngsock* sockdata; } ;
typedef  TYPE_1__* node_p ;
struct TYPE_5__ {int /*<<< orphan*/  nd_ID; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NETGRAPH_SOCK ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NG_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct ngsock*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ngsock* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ngpcb*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 struct ngpcb* FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  typestruct ; 

__attribute__((used)) static int
FUNC9(struct socket *so)
{
	struct ngsock *priv;
	struct ngpcb *pcbp;
	node_p node;
	int error;

	/* Setup protocol control block */
	if ((error = FUNC5(so, NG_CONTROL)) != 0)
		return (error);
	pcbp = FUNC8(so);

	/* Make the generic node components */
	if ((error = FUNC7(&typestruct, &node)) != 0) {
		FUNC6(pcbp, NG_CONTROL);
		return (error);
	}

	/*
	 * Allocate node private info and hash. We start
	 * with 16 hash entries, however we may grow later
	 * in ngs_newhook(). We can't predict how much hooks
	 * does this node plan to have.
	 */
	priv = FUNC3(sizeof(*priv), M_NETGRAPH_SOCK, M_WAITOK | M_ZERO);
	priv->hash = FUNC2(16, M_NETGRAPH_SOCK, &priv->hmask);

	/* Initialize mutex. */
	FUNC4(&priv->mtx, "ng_socket", NULL, MTX_DEF);

	/* Link the pcb the private data. */
	priv->ctlsock = pcbp;
	pcbp->sockdata = priv;
	priv->refs++;
	priv->node = node;
	pcbp->node_id = node->nd_ID;	/* hint for netstat(1) */

	/* Link the node and the private data. */
	FUNC1(priv->node, priv);
	FUNC0(priv->node);
	priv->refs++;

	return (0);
}