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
struct nd_prefix {int /*<<< orphan*/  ndpr_advrtrs; } ;
struct nd_pfxrouter {struct nd_defrouter* router; } ;
struct nd_defrouter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nd_pfxrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IP6NDP ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC8 (struct nd_pfxrouter*,int /*<<< orphan*/ ) ; 
 struct nd_pfxrouter* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfr_entry ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (struct nd_prefix*,struct nd_defrouter*) ; 

__attribute__((used)) static void
FUNC12(struct nd_prefix *pr, struct nd_defrouter *dr)
{
	struct nd_pfxrouter *new;
	bool update;

	FUNC3();

	FUNC1();
	if (FUNC11(pr, dr) != NULL) {
		FUNC2();
		return;
	}
	FUNC2();

	new = FUNC9(sizeof(*new), M_IP6NDP, M_NOWAIT | M_ZERO);
	if (new == NULL)
		return;
	FUNC6(dr);
	new->router = dr;

	FUNC4();
	if (FUNC11(pr, dr) == NULL) {
		FUNC0(&pr->ndpr_advrtrs, new, pfr_entry);
		update = true;
	} else {
		/* We lost a race to add the reference. */
		FUNC7(dr);
		FUNC8(new, M_IP6NDP);
		update = false;
	}
	FUNC5();

	if (update)
		FUNC10();
}