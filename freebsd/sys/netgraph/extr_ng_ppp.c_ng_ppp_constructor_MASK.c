#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_6__ {int /*<<< orphan*/  xmtx; int /*<<< orphan*/  rmtx; int /*<<< orphan*/  fragTimer; TYPE_1__* links; int /*<<< orphan*/ * fragsmem; int /*<<< orphan*/  fragsfree; int /*<<< orphan*/  frags; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int MP_MAX_QUEUE_LEN ; 
 int /*<<< orphan*/  MP_NOSEQ ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NETGRAPH_PPP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int NG_PPP_MAX_LINKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_qent ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(node_p node)
{
	priv_p priv;
	int i;

	/* Allocate private structure */
	priv = FUNC3(sizeof(*priv), M_NETGRAPH_PPP, M_WAITOK | M_ZERO);

	FUNC0(node, priv);

	/* Initialize state */
	FUNC1(&priv->frags);
	FUNC1(&priv->fragsfree);
	for (i = 0; i < MP_MAX_QUEUE_LEN; i++)
		FUNC2(&priv->fragsfree, &priv->fragsmem[i], f_qent);
	for (i = 0; i < NG_PPP_MAX_LINKS; i++)
		priv->links[i].seq = MP_NOSEQ;
	FUNC5(&priv->fragTimer);

	FUNC4(&priv->rmtx, "ng_ppp_recv", NULL, MTX_DEF);
	FUNC4(&priv->xmtx, "ng_ppp_xmit", NULL, MTX_DEF);

	/* Done */
	return (0);
}