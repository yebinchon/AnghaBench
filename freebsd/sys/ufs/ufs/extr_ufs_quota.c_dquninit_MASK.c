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
struct dquot {int /*<<< orphan*/  dq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DQUOT ; 
 struct dquot* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dq_freelist ; 
 int /*<<< orphan*/  dqfreelist ; 
 int /*<<< orphan*/  dqhash ; 
 int /*<<< orphan*/  dqhashtbl ; 
 int /*<<< orphan*/  dqhlock ; 
 int /*<<< orphan*/  FUNC2 (struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void)
{
	struct dquot *dq;

	FUNC3(dqhashtbl, M_DQUOT, dqhash);
	while ((dq = FUNC0(&dqfreelist)) != NULL) {
		FUNC1(&dqfreelist, dq, dq_freelist);
		FUNC4(&dq->dq_lock);
		FUNC2(dq, M_DQUOT);
	}
	FUNC4(&dqhlock);
}