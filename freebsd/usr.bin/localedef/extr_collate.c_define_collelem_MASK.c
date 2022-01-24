#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_6__ {char* symbol; int /*<<< orphan*/ * ref; int /*<<< orphan*/ * expand; } ;
typedef  TYPE_1__ collelem_t ;

/* Variables and functions */
 scalar_t__ COLLATE_STR_LEN ; 
 int COLL_WEIGHTS_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  elem_by_expand ; 
 int /*<<< orphan*/  elem_by_symbol ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(char *name, wchar_t *wcs)
{
	collelem_t	*e;
	int		i;

	if (FUNC6(wcs) >= COLLATE_STR_LEN) {
		FUNC3(stderr,"expanded collation element too long");
		return;
	}

	if ((e = FUNC2(1, sizeof(*e))) == NULL) {
		FUNC3(stderr, "out of memory");
		return;
	}
	e->expand = wcs;
	e->symbol = name;

	/*
	 * This is executed before the order statement, so we don't
	 * know how many priorities we *really* need.  We allocate one
	 * for each possible weight.  Not a big deal, as collating-elements
	 * prove to be quite rare.
	 */
	for (i = 0; i < COLL_WEIGHTS_MAX; i++) {
		e->ref[i] = FUNC5();
	}

	/* A character sequence can only reduce to one element. */
	if ((FUNC0(elem_by_symbol, &elem_by_symbol, e) != NULL) ||
	    (FUNC0(elem_by_expand, &elem_by_expand, e) != NULL)) {
		FUNC3(stderr, "duplicate collating element definition");
		FUNC4(e);
		return;
	}
	FUNC1(elem_by_symbol, &elem_by_symbol, e);
	FUNC1(elem_by_expand, &elem_by_expand, e);
}