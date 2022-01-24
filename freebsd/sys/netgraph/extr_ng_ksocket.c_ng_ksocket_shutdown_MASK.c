#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_10__ {int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  node; int /*<<< orphan*/  embryos; TYPE_2__* so; } ;

/* Variables and functions */
 int KSF_EMBRYONIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_KSOCKET ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  SO_SND ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__* const,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  siblings ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(node_p node)
{
	const priv_p priv = FUNC3(node);
	priv_p embryo;

	/* Close our socket (if any) */
	if (priv->so != NULL) {
		FUNC6(&priv->so->so_rcv);
		FUNC12(priv->so, SO_RCV);
		FUNC7(&priv->so->so_rcv);
		FUNC6(&priv->so->so_snd);
		FUNC12(priv->so, SO_SND);
		FUNC7(&priv->so->so_snd);
		FUNC11(priv->so);
		priv->so = NULL;
	}

	/* If we are an embryo, take ourselves out of the parent's list */
	if (priv->flags & KSF_EMBRYONIC) {
		FUNC2(priv, siblings);
		priv->flags &= ~KSF_EMBRYONIC;
	}

	/* Remove any embryonic children we have */
	while (!FUNC0(&priv->embryos)) {
		embryo = FUNC1(&priv->embryos);
		FUNC10(embryo->node);
	}

	/* Take down netgraph node */
	FUNC8(priv, sizeof(*priv));
	FUNC9(priv, M_NETGRAPH_KSOCKET);
	FUNC4(node, NULL);
	FUNC5(node);		/* let the node escape */
	return (0);
}