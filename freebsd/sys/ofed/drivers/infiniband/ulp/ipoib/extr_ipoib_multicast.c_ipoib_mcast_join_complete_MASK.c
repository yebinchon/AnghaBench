#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;
struct TYPE_4__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int backoff; int /*<<< orphan*/  flags; TYPE_2__ mcmember; int /*<<< orphan*/  logcount; struct ipoib_dev_priv* priv; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  mcast_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  carrier_on_task; struct ipoib_mcast* broadcast; } ;
struct ib_sa_multicast {int /*<<< orphan*/  rec; struct ipoib_mcast* context; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENETRESET ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int IPOIB_MAX_BACKOFF_SECONDS ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  IPOIB_MCAST_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ipoib_mcast*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  mcast_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(int status,
				     struct ib_sa_multicast *multicast)
{
	struct ipoib_mcast *mcast = multicast->context;
	struct ipoib_dev_priv *priv = mcast->priv;

	FUNC0(priv, "join completion for %16D (status %d)\n",
			mcast->mcmember.mgid.raw, ":", status);

	/* We trap for port events ourselves. */
	if (status == -ENETRESET)
		return 0;

	if (!status)
		status = FUNC1(mcast, &multicast->rec);

	if (!status) {
		mcast->backoff = 1;
		FUNC3(&mcast_mutex);
		if (FUNC10(IPOIB_MCAST_RUN, &priv->flags))
			FUNC5(ipoib_workqueue,
					   &priv->mcast_task, 0);
		FUNC4(&mcast_mutex);

		/*
		 * Defer carrier on work to ipoib_workqueue to avoid a
		 * deadlock on rtnl_lock here.
		 */
		if (mcast == priv->broadcast)
			FUNC6(ipoib_workqueue, &priv->carrier_on_task);

		return 0;
	}

	if (mcast->logcount++ < 20) {
		if (status == -ETIMEDOUT || status == -EAGAIN) {
			FUNC0(priv, "multicast join failed for %16D, status %d\n",
					mcast->mcmember.mgid.raw, ":", status);
		} else {
			FUNC2(priv, "multicast join failed for %16D, status %d\n",
				   mcast->mcmember.mgid.raw, ":", status);
		}
	}

	mcast->backoff *= 2;
	if (mcast->backoff > IPOIB_MAX_BACKOFF_SECONDS)
		mcast->backoff = IPOIB_MAX_BACKOFF_SECONDS;

	/* Clear the busy flag so we try again */
	status = FUNC9(IPOIB_MCAST_FLAG_BUSY, &mcast->flags);

	FUNC3(&mcast_mutex);
	FUNC7(&priv->lock);
	if (FUNC10(IPOIB_MCAST_RUN, &priv->flags))
		FUNC5(ipoib_workqueue, &priv->mcast_task,
				   mcast->backoff * HZ);
	FUNC8(&priv->lock);
	FUNC4(&mcast_mutex);

	return status;
}