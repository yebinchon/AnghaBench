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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct netfront_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_info*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct netfront_info *np = FUNC4(dev);
	u_int i;

	for (i = 0; i < np->num_queues; i++) {
		FUNC0(&np->rxq[i]);
		FUNC2(&np->txq[i]);
	}
	FUNC5(np);
	for (i = 0; i < np->num_queues; i++) {
		FUNC1(&np->rxq[i]);
		FUNC3(&np->txq[i]);
	}
	return (0);
}