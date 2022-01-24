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
struct mwl_txq {int /*<<< orphan*/  nfree; int /*<<< orphan*/  free; } ;
struct mwl_txbuf {int /*<<< orphan*/ * bf_node; int /*<<< orphan*/ * bf_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mwl_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_txq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mwl_txbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bf_list ; 

__attribute__((used)) static void
FUNC3(struct mwl_txq *txq, struct mwl_txbuf *bf)
{
	bf->bf_m = NULL;
	bf->bf_node = NULL;
	FUNC0(txq);
	FUNC2(&txq->free, bf, bf_list);
	txq->nfree++;
	FUNC1(txq);
}