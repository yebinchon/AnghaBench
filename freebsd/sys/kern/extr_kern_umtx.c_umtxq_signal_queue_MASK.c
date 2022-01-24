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
struct umtxq_queue {int /*<<< orphan*/  head; } ;
struct umtx_q {int dummy; } ;
struct umtx_key {int dummy; } ;

/* Variables and functions */
 struct umtx_q* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct umtx_key*) ; 
 struct umtxq_queue* FUNC3 (struct umtx_key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct umtx_q*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct umtx_q*) ; 

__attribute__((used)) static int
FUNC6(struct umtx_key *key, int n_wake, int q)
{
	struct umtxq_queue *uh;
	struct umtx_q *uq;
	int ret;

	ret = 0;
	FUNC1(FUNC2(key));
	uh = FUNC3(key, q);
	if (uh != NULL) {
		while ((uq = FUNC0(&uh->head)) != NULL) {
			FUNC4(uq, q);
			FUNC5(uq);
			if (++ret >= n_wake)
				return (ret);
		}
	}
	return (ret);
}