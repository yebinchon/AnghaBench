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
typedef  struct ng_pptpgre_roq {int /*<<< orphan*/  item; } const ng_pptpgre_roq ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  roqh ;
typedef  TYPE_1__* hpriv_p ;
struct TYPE_3__ {int /*<<< orphan*/  hook; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ng_pptpgre_roq const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ng_pptpgre_roq const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static int
FUNC7(const hpriv_p hpriv, roqh *q, const struct ng_pptpgre_roq *st)
{
	struct ng_pptpgre_roq *np;
	struct mbuf *m;
	int error = 0;

	FUNC6(&hpriv->mtx, MA_NOTOWNED);
	while (!FUNC2(q)) {
		np = FUNC3(q);
		FUNC4(q, next);
		FUNC0(np->item, m);
		FUNC1(error, np->item, hpriv->hook, m);
		if (np != st)
			FUNC5(np, M_NETGRAPH);
	}
	return (error);
}