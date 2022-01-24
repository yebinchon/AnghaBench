#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * tq; int /*<<< orphan*/  work; } ;
struct lio {TYPE_1__ rx_status_tq; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{
	struct lio	*lio = FUNC0(ifp);

	if (lio->rx_status_tq.tq != NULL) {
		while (FUNC1(lio->rx_status_tq.tq,
						&lio->rx_status_tq.work, NULL))
			FUNC2(lio->rx_status_tq.tq,
						&lio->rx_status_tq.work);

		FUNC3(lio->rx_status_tq.tq);

		lio->rx_status_tq.tq = NULL;
	}
}