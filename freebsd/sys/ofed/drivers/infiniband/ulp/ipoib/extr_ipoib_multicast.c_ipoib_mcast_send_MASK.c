#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct mbuf {int dummy; } ;
struct TYPE_8__ {scalar_t__ ifq_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  raw; } ;
struct TYPE_7__ {TYPE_2__ mgid; } ;
struct ipoib_mcast {scalar_t__ ah; int /*<<< orphan*/  flags; TYPE_4__ pkt_queue; int /*<<< orphan*/  list; TYPE_3__ mcmember; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  multicast_list; TYPE_1__* broadcast; int /*<<< orphan*/  flags; struct ifnet* dev; } ;
struct ifnet {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MULTICAST_QPN ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IPOIB_FLAG_OPER_UP ; 
 scalar_t__ IPOIB_MAX_MCAST_QUEUE ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_ATTACHED ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_SENDONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,struct ipoib_mcast*) ; 
 struct ipoib_mcast* FUNC2 (struct ipoib_dev_priv*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,...) ; 
 struct ipoib_mcast* FUNC5 (struct ipoib_dev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_mcast*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,struct mbuf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC14(struct ipoib_dev_priv *priv, void *mgid, struct mbuf *mb)
{
	struct ifnet *dev = priv->dev;
	struct ipoib_mcast *mcast;

	if (!FUNC13(IPOIB_FLAG_OPER_UP, &priv->flags)		||
	    !priv->broadcast					||
	    !FUNC13(IPOIB_MCAST_FLAG_ATTACHED, &priv->broadcast->flags)) {
		FUNC3(dev, IFCOUNTER_OERRORS, 1);
		FUNC10(mb);
		return;
	}

	mcast = FUNC2(priv, mgid);
	if (!mcast) {
		/* Let's create a new send only group now */
		FUNC4(priv, "setting up send only multicast group for %16D\n",
				mgid, ":");

		mcast = FUNC5(priv, 0);
		if (!mcast) {
			FUNC8(priv, "unable to allocate memory for "
				   "multicast structure\n");
			FUNC3(dev, IFCOUNTER_OERRORS, 1);
			FUNC10(mb);
			goto out;
		}

		FUNC12(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags);
		FUNC11(mcast->mcmember.mgid.raw, mgid, sizeof (union ib_gid));
		FUNC1(priv, mcast);
		FUNC9(&mcast->list, &priv->multicast_list);
	}

	if (!mcast->ah) {
		if (mcast->pkt_queue.ifq_len < IPOIB_MAX_MCAST_QUEUE) {
			FUNC0(&mcast->pkt_queue, mb);
		} else {
			FUNC3(dev, IFCOUNTER_OERRORS, 1);
			FUNC10(mb);
		}

		if (FUNC13(IPOIB_MCAST_FLAG_BUSY, &mcast->flags))
			FUNC4(priv, "no address vector, "
					"but multicast join already started\n");
		else if (FUNC13(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags))
			FUNC6(mcast);

		/*
		 * If lookup completes between here and out:, don't
		 * want to send packet twice.
		 */
		mcast = NULL;
	}

out:
	if (mcast && mcast->ah)
		FUNC7(priv, mb, mcast->ah, IB_MULTICAST_QPN);
}