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
struct filter {scalar_t__ match_hook; } ;
typedef  scalar_t__ hook_p ;
typedef  TYPE_3__* etf_p ;
struct TYPE_6__ {scalar_t__ hook; } ;
struct TYPE_5__ {scalar_t__ hook; } ;
struct TYPE_7__ {TYPE_2__ nomatch_hook; TYPE_1__ downstream_hook; int /*<<< orphan*/ * hashtable; } ;

/* Variables and functions */
 int HASHSIZE ; 
 struct filter* FUNC0 (int /*<<< orphan*/ *) ; 
 struct filter* FUNC1 (struct filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_ETF ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct filter* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(hook_p hook)
{
	const etf_p etfp = FUNC8(FUNC3(hook));
	int i;
	struct filter *fil1, *fil2;

	/* purge any rules that refer to this filter */
	for (i = 0; i < HASHSIZE; i++) {
		fil1 = FUNC0(&etfp->hashtable[i]);
		while (fil1 != NULL) {
			fil2 = FUNC1(fil1, next);
			if (fil1->match_hook == hook) {
				FUNC2(fil1, next);
				FUNC9(fil1, M_NETGRAPH_ETF);
			}
			fil1 = fil2;
		}
	}
		
	/* If it's not one of the special hooks, then free it */
	if (hook == etfp->downstream_hook.hook) {
		etfp->downstream_hook.hook = NULL;
	} else if (hook == etfp->nomatch_hook.hook) {
		etfp->nomatch_hook.hook = NULL;
	} else {
		if (FUNC4(hook)) /* Paranoia */
			FUNC9(FUNC4(hook), M_NETGRAPH_ETF);
	}

	FUNC5(hook, NULL);

	if ((FUNC7(FUNC3(hook)) == 0)
	&& (FUNC6(FUNC3(hook)))) /* already shutting down? */
		FUNC10(FUNC3(hook));
	return (0);
}