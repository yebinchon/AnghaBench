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
struct sge_rspq {int next_holdoff; int /*<<< orphan*/  cidx; int /*<<< orphan*/  cntxt_id; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_GTS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ cxgb_debug ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline int
FUNC7(adapter_t *adap, struct sge_rspq *rq)
{
	int work;
	static int last_holdoff = 0;
	
	work = FUNC4(adap, FUNC5(rq), -1);

	if (cxgb_debug && (rq->next_holdoff != last_holdoff)) {
		FUNC3("next_holdoff=%d\n", rq->next_holdoff);
		last_holdoff = rq->next_holdoff;
	}
	FUNC6(adap, A_SG_GTS, FUNC2(rq->cntxt_id) |
	    FUNC1(rq->next_holdoff) | FUNC0(rq->cidx));
	
	return (work);
}