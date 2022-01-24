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
struct lro_entry {int dummy; } ;
struct lro_ctrl {int /*<<< orphan*/  lro_active; } ;

/* Variables and functions */
 struct lro_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lro_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct lro_ctrl*,struct lro_entry*) ; 

__attribute__((used)) static void
FUNC3(struct lro_ctrl *lc)
{
	struct lro_entry *le;

	while ((le = FUNC0(&lc->lro_active)) != NULL) {
		FUNC1(le);
		FUNC2(lc, le);
	}
}