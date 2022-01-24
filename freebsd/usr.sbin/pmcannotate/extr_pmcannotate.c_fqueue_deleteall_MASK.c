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
struct aggent {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct aggent* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct aggent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ag_fiter ; 
 int /*<<< orphan*/  fqueue ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct aggent *agg;

	while (FUNC0(&fqueue) == 0) {
		agg = FUNC1(&fqueue);
		FUNC2(&fqueue, agg, ag_fiter);
	}
}