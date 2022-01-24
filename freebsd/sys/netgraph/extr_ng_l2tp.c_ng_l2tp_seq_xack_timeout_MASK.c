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
struct l2tp_seq {int /*<<< orphan*/  ns; int /*<<< orphan*/  xack_timer; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_4__ {struct l2tp_seq seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2tp_seq* const) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(node_p node, hook_p hook, void *arg1, int arg2)
{
	const priv_p priv = FUNC1(node);
	struct l2tp_seq *const seq = &priv->seq;

	/* Make sure callout is still active before doing anything */
	if (FUNC3(&seq->xack_timer) ||
	    (!FUNC2(&seq->xack_timer)))
		return;

	/* Sanity check */
	FUNC0(seq);

	/* Send a ZLB */
	FUNC4(priv, NULL, seq->ns);

	/* callout_deactivate() is not needed here 
	    as ng_uncallout() was called by ng_l2tp_xmit_ctrl() */

	/* Sanity check */
	FUNC0(seq);
}