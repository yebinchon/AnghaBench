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
struct file_header {int /*<<< orphan*/ * si; int /*<<< orphan*/ * fr; } ;
struct bwstring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bwstring* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bwstring*) ; 

__attribute__((used)) static void
FUNC6(struct file_header *fh)
{

	if (fh && fh->fr) {
		struct bwstring *tmp;

		tmp = FUNC1(fh->fr);
		if (tmp == NULL) {
			FUNC0(fh->fr);
			fh->fr = NULL;
			if (fh->si) {
				FUNC4(fh->si);
				FUNC2(fh->si);
				fh->si = NULL;
			}
		} else {
			if (fh->si == NULL)
				fh->si = FUNC3();
			FUNC5(fh->si, tmp);
		}
	}
}