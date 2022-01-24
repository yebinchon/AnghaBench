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
struct umtx_q {int /*<<< orphan*/  uq_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct umtx_q*) ; 
 int /*<<< orphan*/  FUNC3 (struct umtx_q*) ; 

__attribute__((used)) static inline void
FUNC4(struct umtx_q *uq)
{

	FUNC0(FUNC1(&uq->uq_key));
	FUNC2(uq);
	FUNC3(uq);
}