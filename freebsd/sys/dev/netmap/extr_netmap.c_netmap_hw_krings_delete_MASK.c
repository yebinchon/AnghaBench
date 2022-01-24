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
typedef  size_t u_int ;
struct netmap_adapter {int dummy; } ;
struct mbq {int dummy; } ;
struct TYPE_2__ {struct mbq rx_queue; } ;

/* Variables and functions */
 TYPE_1__** FUNC0 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NR_RX ; 
 int /*<<< orphan*/  FUNC1 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_adapter*) ; 
 size_t FUNC5 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct netmap_adapter *na)
{
	u_int lim = FUNC5(na, NR_RX), i;

	for (i = FUNC7(na, NR_RX); i < lim; i++) {
		struct mbq *q = &FUNC0(na, NR_RX)[i]->rx_queue;
		FUNC6("destroy sw mbq with len %d", FUNC1(q));
		FUNC2(q);
		FUNC3(q);
	}
	FUNC4(na);
}