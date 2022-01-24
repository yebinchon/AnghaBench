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
typedef  scalar_t__ u_int ;
struct netfront_txq {int dummy; } ;
struct netfront_rxq {int dummy; } ;
struct netfront_info {int num_queues; struct netfront_rxq* rxq; struct netfront_txq* txq; int /*<<< orphan*/  xbdev; } ;

/* Variables and functions */
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  XST_NIL ; 
 int /*<<< orphan*/  FUNC0 (struct netfront_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC7 (struct netfront_txq*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC9(struct netfront_info *np)
{
	int i, error;
	u_int feature_rx_copy;
	struct netfront_rxq *rxq;
	struct netfront_txq *txq;

	error = FUNC8(XST_NIL, FUNC3(np->xbdev),
	    "feature-rx-copy", NULL, "%u", &feature_rx_copy);
	if (error != 0)
		feature_rx_copy = 0;

	/* We only support rx copy. */
	if (!feature_rx_copy)
		return (EPROTONOSUPPORT);

	/* Recovery procedure: */
	error = FUNC1(np->xbdev, np);
	if (error != 0)
		return (error);

	/* Step 1: Reinitialise variables. */
	FUNC5(np);
	FUNC4(np);

	/* Step 2: Release TX buffer */
	for (i = 0; i < np->num_queues; i++) {
		txq = &np->txq[i];
		FUNC7(txq);
	}

	/* Step 3: Rebuild the RX buffer freelist and the RX ring itself. */
	for (i = 0; i < np->num_queues; i++) {
		rxq = &np->rxq[i];
		FUNC6(rxq);
	}

	/* Step 4: All public and private state should now be sane.  Get
	 * ready to start sending and receiving packets and give the driver
	 * domain a kick because we've probably just requeued some
	 * packets.
	 */
	FUNC0(np);
	FUNC2(np);

	return (0);
}