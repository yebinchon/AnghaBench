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
struct faultstate {int /*<<< orphan*/ * m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct faultstate *fs)
{

	if (fs->m != NULL) {
		/*
		 * fs->m's object lock might not be held, so the page must be
		 * kept busy until we are done with it.
		 */
		FUNC1(fs->m);
		FUNC0(fs->m);
		FUNC2(fs->m);
		FUNC3(fs->m);
		fs->m = NULL;
	}
}