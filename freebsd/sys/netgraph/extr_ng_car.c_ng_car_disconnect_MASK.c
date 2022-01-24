#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hookinfo {size_t q_first; size_t q_last; int /*<<< orphan*/ * hook; int /*<<< orphan*/ * q; } ;
typedef  TYPE_3__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_6__ {int /*<<< orphan*/ * dest; int /*<<< orphan*/ * hook; } ;
struct TYPE_5__ {int /*<<< orphan*/ * dest; } ;
struct TYPE_7__ {TYPE_2__ upper; TYPE_1__ lower; } ;

/* Variables and functions */
 size_t NG_CAR_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hookinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(hook_p hook)
{
	struct hookinfo *const hinfo = FUNC2(hook);
	const node_p node = FUNC1(hook);
	const priv_p priv = FUNC5(node);

	if (hinfo) {
		/* Purge queue if not empty. */
		while (hinfo->q_first != hinfo->q_last) {
			FUNC0(hinfo->q[hinfo->q_first]);
			hinfo->q_first++;
			if (hinfo->q_first >= NG_CAR_QUEUE_SIZE)
		    		hinfo->q_first = 0;
		}
		/* Remove hook refs. */
		if (hinfo->hook == priv->upper.hook)
			priv->lower.dest = NULL;
		else
			priv->upper.dest = NULL;
		hinfo->hook = NULL;
	}
	/* Already shutting down? */
	if ((FUNC4(FUNC1(hook)) == 0)
	    && (FUNC3(FUNC1(hook))))
		FUNC6(FUNC1(hook));
	return (0);
}