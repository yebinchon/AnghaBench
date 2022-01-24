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
struct ngsock {int /*<<< orphan*/ * node; struct ngpcb* ctlsock; struct ngpcb* datasock; int /*<<< orphan*/  mtx; } ;
struct ngpcb {int /*<<< orphan*/  ng_socket; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 struct ngsock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ngsock* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(node_p node)
{
	struct ngsock *const priv = FUNC0(node);
	struct ngpcb *dpcbp, *pcbp;

	FUNC3(&priv->mtx);
	dpcbp = priv->datasock;
	pcbp = priv->ctlsock;

	if (dpcbp != NULL)
		FUNC5(dpcbp->ng_socket);

	if (pcbp != NULL)
		FUNC5(pcbp->ng_socket);

	priv->node = NULL;
	FUNC1(node, NULL);
	FUNC4(priv);

	FUNC2(node);
	return (0);
}