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
struct dmar_unit {int /*<<< orphan*/  inv_seq_waiters; int /*<<< orphan*/  lock; } ;
struct dmar_qi_genseq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*,struct dmar_qi_genseq const*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct dmar_unit *unit, const struct dmar_qi_genseq *gseq,
    bool nowait)
{

	FUNC0(unit);
	unit->inv_seq_waiters++;
	while (!FUNC2(unit, gseq)) {
		if (cold || nowait) {
			FUNC1();
		} else {
			FUNC3(&unit->inv_seq_waiters, &unit->lock, 0,
			    "dmarse", hz);
		}
	}
	unit->inv_seq_waiters--;
}