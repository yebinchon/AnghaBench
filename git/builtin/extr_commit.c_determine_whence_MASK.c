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
struct wt_status {int /*<<< orphan*/  whence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FROM_CHERRY_PICK ; 
 int /*<<< orphan*/  FROM_COMMIT ; 
 int /*<<< orphan*/  FROM_MERGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int sequencer_in_use ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  whence ; 

__attribute__((used)) static void FUNC4(struct wt_status *s)
{
	if (FUNC0(FUNC2(the_repository)))
		whence = FROM_MERGE;
	else if (FUNC0(FUNC1(the_repository))) {
		whence = FROM_CHERRY_PICK;
		if (FUNC0(FUNC3()))
			sequencer_in_use = 1;
	}
	else
		whence = FROM_COMMIT;
	if (s)
		s->whence = whence;
}