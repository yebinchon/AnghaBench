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
struct ctxinfo {int dlci; scalar_t__ flags; int /*<<< orphan*/ * hook; } ;
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_3__ {int /*<<< orphan*/  datahooks; scalar_t__* ALT; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ctxinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(hook_p hook)
{
	const sc_p sc = FUNC4(FUNC0(hook));
	struct ctxinfo *const cp = FUNC1(hook);
	int dlci;

	/* If it's a regular dlci hook, then free resources etc.. */
	if (cp != NULL) {
		cp->hook = NULL;
		dlci = cp->dlci;
		if (dlci != -1)
			sc->ALT[dlci] = 0;
		cp->flags = 0;
		sc->datahooks--;
	}
	if ((FUNC3(FUNC0(hook)) == 0)
	&& (FUNC2(FUNC0(hook))))
		FUNC5(FUNC0(hook));
	return (0);
}