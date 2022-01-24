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
struct ignentry {struct ignentry* mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ignentry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ignentry*) ; 
 int /*<<< orphan*/  ignores ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct ignentry *ign;

	while (!FUNC0(&ignores)) {
		ign = FUNC1(&ignores);
		FUNC2(&ignores, next);
		FUNC3(ign->mask);
		FUNC3(ign);
	}
}