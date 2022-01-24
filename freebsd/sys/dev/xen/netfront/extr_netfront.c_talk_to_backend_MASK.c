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
struct xs_transaction {int dummy; } ;
struct netfront_info {int num_queues; TYPE_1__* xn_ifp; int /*<<< orphan*/ * txq; int /*<<< orphan*/ * rxq; int /*<<< orphan*/  xbdev; int /*<<< orphan*/  mac; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int if_capenable; } ;

/* Variables and functions */
 int EAGAIN ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int /*<<< orphan*/  XST_NIL ; 
 int /*<<< orphan*/  FUNC0 (struct netfront_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct netfront_info*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xs_transaction*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long xn_num_queues ; 
 int FUNC7 (struct xs_transaction,char const*,char*,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,unsigned long*) ; 
 int FUNC9 (struct xs_transaction,int) ; 
 int FUNC10 (struct xs_transaction*) ; 

__attribute__((used)) static int
FUNC11(device_t dev, struct netfront_info *info)
{
	const char *message;
	struct xs_transaction xst;
	const char *node = FUNC5(dev);
	int err;
	unsigned long num_queues, max_queues = 0;
	unsigned int i;

	err = FUNC3(dev, info->mac);
	if (err != 0) {
		FUNC4(dev, err, "parsing %s/mac", node);
		goto out;
	}

	err = FUNC8(XST_NIL, FUNC6(info->xbdev),
	    "multi-queue-max-queues", NULL, "%lu", &max_queues);
	if (err != 0)
		max_queues = 1;
	num_queues = xn_num_queues;
	if (num_queues > max_queues)
		num_queues = max_queues;

	err = FUNC1(dev, info, num_queues);
	if (err != 0)
		goto out;

 again:
	err = FUNC10(&xst);
	if (err != 0) {
		FUNC4(dev, err, "starting transaction");
		goto free;
	}

	if (info->num_queues == 1) {
		err = FUNC2(dev, &info->rxq[0],
		    &info->txq[0], &xst, false);
		if (err != 0)
			goto abort_transaction_no_def_error;
	} else {
		err = FUNC7(xst, node, "multi-queue-num-queues",
		    "%u", info->num_queues);
		if (err != 0) {
			message = "writing multi-queue-num-queues";
			goto abort_transaction;
		}

		for (i = 0; i < info->num_queues; i++) {
			err = FUNC2(dev, &info->rxq[i],
			    &info->txq[i], &xst, true);
			if (err != 0)
				goto abort_transaction_no_def_error;
		}
	}

	err = FUNC7(xst, node, "request-rx-copy", "%u", 1);
	if (err != 0) {
		message = "writing request-rx-copy";
		goto abort_transaction;
	}
	err = FUNC7(xst, node, "feature-rx-notify", "%d", 1);
	if (err != 0) {
		message = "writing feature-rx-notify";
		goto abort_transaction;
	}
	err = FUNC7(xst, node, "feature-sg", "%d", 1);
	if (err != 0) {
		message = "writing feature-sg";
		goto abort_transaction;
	}
	if ((info->xn_ifp->if_capenable & IFCAP_LRO) != 0) {
		err = FUNC7(xst, node, "feature-gso-tcpv4", "%d", 1);
		if (err != 0) {
			message = "writing feature-gso-tcpv4";
			goto abort_transaction;
		}
	}
	if ((info->xn_ifp->if_capenable & IFCAP_RXCSUM) == 0) {
		err = FUNC7(xst, node, "feature-no-csum-offload", "%d", 1);
		if (err != 0) {
			message = "writing feature-no-csum-offload";
			goto abort_transaction;
		}
	}

	err = FUNC9(xst, 0);
	if (err != 0) {
		if (err == EAGAIN)
			goto again;
		FUNC4(dev, err, "completing transaction");
		goto free;
	}

	return 0;

 abort_transaction:
	FUNC4(dev, err, "%s", message);
 abort_transaction_no_def_error:
	FUNC9(xst, 1);
 free:
	FUNC0(info);
 out:
	return (err);
}