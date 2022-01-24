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
struct hn_txdesc {int refs; int flags; } ;
struct hn_tx_ring {int dummy; } ;

/* Variables and functions */
 int HN_TXD_FLAG_ONAGG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct hn_tx_ring*,struct hn_txdesc*) ; 

__attribute__((used)) static void
FUNC2(struct hn_tx_ring *txr, struct hn_txdesc *txd)
{

	FUNC0(txd->refs == 0 || txd->refs == 1,
	    ("invalid txd refs %d", txd->refs));

	/* Aggregated txds will be freed by their aggregating txd. */
	if (txd->refs > 0 && (txd->flags & HN_TXD_FLAG_ONAGG) == 0) {
		int freed;

		freed = FUNC1(txr, txd);
		FUNC0(freed, ("can't free txdesc"));
	}
}