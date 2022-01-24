#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ifq_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_5__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int /*<<< orphan*/  flags; TYPE_3__ pkt_queue; TYPE_2__ mcmember; int /*<<< orphan*/  logcount; struct ipoib_dev_priv* priv; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  dev; } ;
struct ib_sa_multicast {int /*<<< orphan*/  rec; struct ipoib_mcast* context; } ;

/* Variables and functions */
 int ENETRESET ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct ipoib_mcast*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(int status,
				   struct ib_sa_multicast *multicast)
{
	struct ipoib_mcast *mcast = multicast->context;
	struct ipoib_dev_priv *priv = mcast->priv;

	/* We trap for port events ourselves. */
	if (status == -ENETRESET)
		return 0;

	if (!status)
		status = FUNC3(mcast, &multicast->rec);

	if (status) {
		if (mcast->logcount++ < 20)
			FUNC2(priv, "multicast join failed for %16D, status %d\n",
					mcast->mcmember.mgid.raw, ":", status);

		/* Flush out any queued packets */
		FUNC1(priv->dev, IFCOUNTER_OERRORS, mcast->pkt_queue.ifq_len);
		FUNC0(&mcast->pkt_queue);

		/* Clear the busy flag so we try again */
		status = FUNC4(IPOIB_MCAST_FLAG_BUSY,
					    &mcast->flags);
	}
	return status;
}