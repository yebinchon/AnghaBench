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
struct netfront_txq {int /*<<< orphan*/  xen_intr_handle; int /*<<< orphan*/  ring_ref; int /*<<< orphan*/  gref_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct netfront_txq*) ; 

__attribute__((used)) static void
FUNC4(struct netfront_txq *txq)
{

	FUNC3(txq);
	FUNC1(txq->gref_head);
	FUNC0(txq->ring_ref, NULL);
	FUNC2(&txq->xen_intr_handle);
}