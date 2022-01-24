#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
typedef  int int32_t ;
struct TYPE_4__ {int pri; } ;
typedef  TYPE_1__ collpri_t ;
struct TYPE_5__ {int /*<<< orphan*/ * ref; } ;
typedef  TYPE_2__ collchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTERR ; 
 int NUM_WT ; 
 int /*<<< orphan*/  REFER ; 
 int /*<<< orphan*/  RESOLVED ; 
 int /*<<< orphan*/  T_CHAR ; 
 scalar_t__ T_ELLIPSIS ; 
 void* currchar ; 
 scalar_t__ ellipsis_start ; 
 int* ellipsis_weights ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (scalar_t__,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__ lastorder ; 
 int nextpri ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC5(wchar_t wc)
{
	collchar_t	*cc;
	int32_t		ref;

	FUNC4(T_CHAR);

	/*
	 * If we last saw an ellipsis, then we need to close the range.
	 * Handle that here.  Note that we have to be careful because the
	 * items *inside* the range are treated exclusiveley to the items
	 * outside of the range.  The ends of the range can have quite
	 * different weights than the range members.
	 */
	if (lastorder == T_ELLIPSIS) {
		int		i;

		if (wc < ellipsis_start) {
			FUNC0(stderr, "malformed range!");
			return;
		}
		while (ellipsis_start < wc) {
			/*
			 * pick all of the saved weights for the
			 * ellipsis.  note that -1 encodes for the
			 * ellipsis itself, which means to take the
			 * current relative priority.
			 */
			if ((cc = FUNC1(ellipsis_start, 1)) == NULL) {
				INTERR;
				return;
			}
			for (i = 0; i < NUM_WT; i++) {
				collpri_t *p;
				if (((ref = ellipsis_weights[i]) == -1) ||
				    ((p = FUNC2(ref)) == NULL) ||
				    (p->pri == -1)) {
					FUNC3(cc->ref[i], nextpri, RESOLVED);
				} else {
					FUNC3(cc->ref[i], ref, REFER);
				}
				ellipsis_weights[i] = 0;
			}
			ellipsis_start++;
			nextpri++;
		}
	}

	currchar = FUNC1(wc, 1);
}