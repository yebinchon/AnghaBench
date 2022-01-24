#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ng_ppp_frag {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_3__ {int /*<<< orphan*/  frags; int /*<<< orphan*/  fragsfree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ng_ppp_frag* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ng_ppp_frag*,int /*<<< orphan*/ ) ; 
 struct ng_ppp_frag* FUNC5 (struct ng_ppp_frag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_qent ; 

__attribute__((used)) static void
FUNC6(node_p node)
{
	const priv_p priv = FUNC1(node);
	struct ng_ppp_frag *qent, *qnext;

	for (qent = FUNC2(&priv->frags); qent; qent = qnext) {
		qnext = FUNC5(qent, f_qent);
		FUNC0(qent->data);
		FUNC4(&priv->fragsfree, qent, f_qent);
	}
	FUNC3(&priv->frags);
}