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
struct mbuf {int dummy; } ;
struct hn_tx_ring {int /*<<< orphan*/  hn_tx_lock; int /*<<< orphan*/  hn_mbuf_br; } ;

/* Variables and functions */
 struct mbuf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct hn_tx_ring *txr)
{
	struct mbuf *m;

	FUNC2(&txr->hn_tx_lock);
	while ((m = FUNC0(txr->hn_mbuf_br)) != NULL)
		FUNC1(m);
	FUNC3(&txr->hn_tx_lock);
}