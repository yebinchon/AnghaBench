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
struct TYPE_4__ {struct ifnet* rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ifqueue {int dummy; } ;
struct TYPE_3__ {struct ipoib_ah* raw; } ;
struct ib_sa_path_rec {char* sl; int /*<<< orphan*/  dlid; TYPE_1__ dgid; } ;
struct ipoib_path {int valid; int /*<<< orphan*/  done; int /*<<< orphan*/ * query; int /*<<< orphan*/  hwaddr; struct ifqueue queue; struct ipoib_ah* ah; struct ib_sa_path_rec pathrec; struct ipoib_dev_priv* priv; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  pd; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; struct ifnet* dev; } ;
struct ipoib_ah {int dummy; } ;
struct ifnet {scalar_t__ (* if_transmit ) (struct ifnet*,struct mbuf*) ;} ;
struct ib_ah_attr {int dummy; } ;
struct epoch_tracker {int dummy; } ;
typedef  int /*<<< orphan*/  mbqueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct ifqueue*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifqueue*,struct mbuf*) ; 
 struct ipoib_ah* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifqueue*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_sa_path_rec*,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_dev_priv*,struct ipoib_path*) ; 
 scalar_t__ FUNC9 (struct ipoib_dev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipoib_path*,int /*<<< orphan*/ ) ; 
 struct ipoib_ah* FUNC12 (struct ipoib_dev_priv*,int /*<<< orphan*/ ,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC13 (struct ipoib_dev_priv*,char*,int,struct ipoib_ah*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ipoib_ah*) ; 
 int /*<<< orphan*/  FUNC15 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC18 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC19(int status, struct ib_sa_path_rec *pathrec, void *path_ptr)
{
	struct ipoib_path *path = path_ptr;
	struct ipoib_dev_priv *priv = path->priv;
	struct ifnet *dev = priv->dev;
	struct ipoib_ah *ah = NULL;
	struct ipoib_ah *old_ah = NULL;
	struct epoch_tracker et;
	struct ifqueue mbqueue;
	struct mbuf *mb;
	unsigned long flags;

	if (!status)
		FUNC13(priv, "PathRec LID 0x%04x for GID %16D\n",
			  FUNC4(pathrec->dlid), pathrec->dgid.raw, ":");
	else
		FUNC13(priv, "PathRec status %d for GID %16D\n",
			  status, path->pathrec.dgid.raw, ":");

	FUNC5(&mbqueue, sizeof(mbqueue));

	if (!status) {
		struct ib_ah_attr av;

		if (!FUNC7(priv->ca, priv->port, pathrec, &av))
			ah = FUNC12(priv, priv->pd, &av);
	}

	FUNC16(&priv->lock, flags);

	if (ah) {
		path->pathrec = *pathrec;

		old_ah   = path->ah;
		path->ah = ah;

		FUNC13(priv, "created address handle %p for LID 0x%04x, SL %d\n",
			  ah, FUNC4(pathrec->dlid), pathrec->sl);

		for (;;) {
			FUNC2(&path->queue, mb);
			if (mb == NULL)
				break;
			FUNC3(&mbqueue, mb);
		}

#ifdef CONFIG_INFINIBAND_IPOIB_CM
		if (ipoib_cm_enabled(priv, path->hwaddr) && !ipoib_cm_get(path))
			ipoib_cm_set(path, ipoib_cm_create_tx(priv, path));
#endif

		path->valid = 1;
	}

	path->query = NULL;
	FUNC6(&path->done);

	FUNC17(&priv->lock, flags);

	if (old_ah)
		FUNC14(old_ah);

	FUNC0(et);
	for (;;) {
		FUNC2(&mbqueue, mb);
		if (mb == NULL)
			break;
		mb->m_pkthdr.rcvif = dev;
		if (dev->if_transmit(dev, mb))
			FUNC15(priv, "dev_queue_xmit failed "
				   "to requeue packet\n");
	}
	FUNC1(et);
}