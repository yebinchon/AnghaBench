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
struct unrhdr {int /*<<< orphan*/  mtx; int /*<<< orphan*/  ppfree; } ;
struct unr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unr*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct unr* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct unr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct unrhdr *uh)
{
	struct unr *up;

	FUNC3(uh->mtx, MA_OWNED);
	while ((up = FUNC1(&uh->ppfree)) != NULL) {
		FUNC2(&uh->ppfree, up, list);
		FUNC5(uh->mtx);
		FUNC0(up);
		FUNC4(uh->mtx);
	}

}