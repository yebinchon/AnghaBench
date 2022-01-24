#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
struct TYPE_5__ {char const* name; scalar_t__ wc; } ;
typedef  TYPE_1__ charmap_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  cmap_sym ; 
 int /*<<< orphan*/  cmap_wc ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(const char *sym, wchar_t wc, int nodups)
{
	charmap_t	srch;
	charmap_t	*n = NULL;

	srch.wc = wc;
	srch.name = sym;

	/*
	 * also possibly insert the wide mapping, although note that there
	 * can only be one of these per wide character code.
	 */
	if ((wc != (wchar_t)-1) && ((FUNC0(cmap_wc, &cmap_wc, &srch)) == NULL)) {
		if ((n = FUNC2(1, sizeof (*n))) == NULL) {
			FUNC3("out of memory");
			return;
		}
		n->wc = wc;
		FUNC1(cmap_wc, &cmap_wc, n);
	}

	if (sym) {
		if (FUNC0(cmap_sym, &cmap_sym, &srch) != NULL) {
			if (nodups) {
				FUNC3("duplicate character definition");
			}
			return;
		}
		if ((n == NULL) && ((n = FUNC2(1, sizeof (*n))) == NULL)) {
			FUNC3("out of memory");
			return;
		}
		n->wc = wc;
		n->name = sym;

		FUNC1(cmap_sym, &cmap_sym, n);
	}
}