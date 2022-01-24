#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ng_pptpgre_roq {int /*<<< orphan*/  seq; } ;
typedef  int /*<<< orphan*/  roqh ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_3__* hpriv_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_10__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  roq; int /*<<< orphan*/  recvSeq; int /*<<< orphan*/  roq_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  recvReorderTimeouts; } ;
struct TYPE_9__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct ng_pptpgre_roq* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ng_pptpgre_roq*,struct ng_pptpgre_roq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ng_pptpgre_roq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__* const) ; 
 int /*<<< orphan*/  sendq ; 

__attribute__((used)) static void
FUNC14(node_p node, hook_p hook, void *arg1, int arg2)
{
	const priv_p priv = FUNC0(node);
	const hpriv_p hpriv = arg1;
	roqh sendq = FUNC4(sendq);
	struct ng_pptpgre_roq *np, *last = NULL;

	priv->stats.recvReorderTimeouts++;
	FUNC9(&hpriv->mtx);
	if (FUNC2(&hpriv->roq)) { /* should not happen */
		FUNC10(&hpriv->mtx);
		return;
	}

	last = np = FUNC3(&hpriv->roq);
	hpriv->roq_len--;
	FUNC7(&hpriv->roq, next);
	FUNC6(&sendq, np, next);

	/* Look if we have more packets in sequence */
	while (!FUNC2(&hpriv->roq)) {
		np = FUNC3(&hpriv->roq);
		if (FUNC1(np->seq, last->seq) > 1)
			break; /* the gap in the sequence */

		/* Next packet is in sequence, move it to the sendq. */
		hpriv->roq_len--;
		FUNC7(&hpriv->roq, next);
		FUNC5(last, np, next);
		last = np;
	}

	hpriv->recvSeq = last->seq;
	if (!FUNC2(&hpriv->roq))
		FUNC13(hpriv);

	/* We need to acknowledge last packet; do it soon... */
	FUNC11(hpriv);		/* drops lock */
	FUNC12(hpriv, &sendq, NULL);
	FUNC8(&hpriv->mtx, MA_NOTOWNED);
}