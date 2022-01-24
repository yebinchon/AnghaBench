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
typedef  size_t u_int ;
struct netfront_info {size_t num_queues; int /*<<< orphan*/ * txq; int /*<<< orphan*/ * rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_info*) ; 

__attribute__((used)) static void
FUNC7(struct netfront_info *np)
{
	u_int i;

	for (i = 0; i < np->num_queues; i++) {
		FUNC0(&np->rxq[i]);
		FUNC2(&np->txq[i]);
	}
	FUNC6(np);
	for (i = 0; i < np->num_queues; i++) {
		FUNC1(&np->rxq[i]);
		FUNC3(&np->txq[i]);
	}

	for (i = 0; i < np->num_queues; i++) {
		FUNC4(&np->rxq[i]);
		FUNC5(&np->txq[i]);
	}
}