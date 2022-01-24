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
struct hn_txdesc {int flags; int /*<<< orphan*/  agg_list; } ;

/* Variables and functions */
 int HN_TXD_FLAG_ONAGG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hn_txdesc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  agg_link ; 

__attribute__((used)) static __inline void
FUNC3(struct hn_txdesc *agg_txd, struct hn_txdesc *txd)
{

	FUNC0((agg_txd->flags & HN_TXD_FLAG_ONAGG) == 0,
	    ("recursive aggregation on aggregating txdesc"));

	FUNC0((txd->flags & HN_TXD_FLAG_ONAGG) == 0,
	    ("already aggregated"));
	FUNC0(FUNC1(&txd->agg_list),
	    ("recursive aggregation on to-be-aggregated txdesc"));

	txd->flags |= HN_TXD_FLAG_ONAGG;
	FUNC2(&agg_txd->agg_list, txd, agg_link);
}