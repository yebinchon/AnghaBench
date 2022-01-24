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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int,int,int,int*,int /*<<< orphan*/ *) ; 
 int vm_pageout_page_count ; 

__attribute__((used)) static int
FUNC10(vm_object_t object, vm_page_t p, int pagerflags,
    int flags, boolean_t *allclean, boolean_t *eio)
{
	vm_page_t ma[vm_pageout_page_count], p_first, tp;
	int count, i, mreq, runlen;

	FUNC4(p, MA_NOTOWNED);
	FUNC3(p);
	FUNC1(object);

	count = 1;
	mreq = 0;

	for (tp = p; count < vm_pageout_page_count; count++) {
		tp = FUNC5(tp);
		if (tp == NULL || FUNC7(tp) == 0)
			break;
		if (!FUNC2(tp, flags, allclean)) {
			FUNC8(tp);
			break;
		}
	}

	for (p_first = p; count < vm_pageout_page_count; count++) {
		tp = FUNC6(p_first);
		if (tp == NULL || FUNC7(tp) == 0)
			break;
		if (!FUNC2(tp, flags, allclean)) {
			FUNC8(tp);
			break;
		}
		p_first = tp;
		mreq++;
	}

	for (tp = p_first, i = 0; i < count; tp = FUNC0(tp, listq), i++)
		ma[i] = tp;

	FUNC9(ma, count, pagerflags, mreq, &runlen, eio);
	return (runlen);
}