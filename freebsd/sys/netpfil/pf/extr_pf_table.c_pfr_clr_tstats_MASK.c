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
struct pfr_table {int dummy; } ;
struct pfr_ktableworkq {int dummy; } ;
struct pfr_ktable {int /*<<< orphan*/  pfrkt_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINVAL ; 
 int PFR_FLAG_ADDRSTOO ; 
 int PFR_FLAG_DUMMY ; 
 struct pfr_ktable* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfr_ktable*) ; 
 int /*<<< orphan*/  FUNC2 (struct pfr_ktableworkq*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_ktableworkq*,struct pfr_ktable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pfr_ktables ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_table*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_ktableworkq*,long,int) ; 
 int /*<<< orphan*/  pfr_ktablehead ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfrkt_workq ; 
 long time_second ; 

int
FUNC7(struct pfr_table *tbl, int size, int *nzero, int flags)
{
	struct pfr_ktableworkq	 workq;
	struct pfr_ktable	*p, key;
	int			 i, xzero = 0;
	long			 tzero = time_second;

	FUNC0(flags, PFR_FLAG_DUMMY | PFR_FLAG_ADDRSTOO);
	FUNC2(&workq);
	for (i = 0; i < size; i++) {
		FUNC4(tbl + i, &key.pfrkt_t, sizeof(key.pfrkt_t));
		if (FUNC6(&key.pfrkt_t, 0, 0))
			return (EINVAL);
		p = FUNC1(pfr_ktablehead, &V_pfr_ktables, &key);
		if (p != NULL) {
			FUNC3(&workq, p, pfrkt_workq);
			xzero++;
		}
	}
	if (!(flags & PFR_FLAG_DUMMY))
		FUNC5(&workq, tzero, flags & PFR_FLAG_ADDRSTOO);
	if (nzero != NULL)
		*nzero = xzero;
	return (0);
}