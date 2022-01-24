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
struct netfront_txq {int /*<<< orphan*/  br; struct netfront_info* info; } ;
struct netfront_info {struct ifnet* xn_ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netfront_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netfront_txq*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct netfront_txq *txq)
{
	struct netfront_info *np = txq->info;
	struct ifnet *ifp = np->xn_ifp;

	FUNC0(txq);
	if (!FUNC1(ifp, txq->br))
		FUNC2(txq, NULL);
}