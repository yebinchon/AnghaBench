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
struct ipoib_tx_buf {int /*<<< orphan*/  mb; } ;
struct ipoib_dev_priv {unsigned int tx_outstanding; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_tail; int /*<<< orphan*/  ca; struct ipoib_tx_buf* tx_ring; struct ifnet* dev; } ;
struct ifnet {int if_drv_flags; } ;
struct ib_wc {unsigned int wr_id; int /*<<< orphan*/  vendor_err; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_UP ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ipoib_tx_buf*) ; 
 unsigned int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ipoib_dev_priv *priv, struct ib_wc *wc)
{
	struct ifnet *dev = priv->dev;
	unsigned int wr_id = wc->wr_id;
	struct ipoib_tx_buf *tx_req;

	FUNC1(priv, "send completion: id %d, status: %d\n",
		       wr_id, wc->status);

	if (FUNC6(wr_id >= ipoib_sendq_size)) {
		FUNC3(priv, "send completion event with wrid %d (> %d)\n",
			   wr_id, ipoib_sendq_size);
		return;
	}

	tx_req = &priv->tx_ring[wr_id];

	FUNC2(priv->ca, tx_req);

	FUNC0(dev, IFCOUNTER_OPACKETS, 1);

	FUNC4(tx_req->mb);

	++priv->tx_tail;
	if (FUNC6(--priv->tx_outstanding == ipoib_sendq_size >> 1) &&
	    (dev->if_drv_flags & IFF_DRV_OACTIVE) &&
	    FUNC5(IPOIB_FLAG_ADMIN_UP, &priv->flags))
		dev->if_drv_flags &= ~IFF_DRV_OACTIVE;

	if (wc->status != IB_WC_SUCCESS &&
	    wc->status != IB_WC_WR_FLUSH_ERR)
		FUNC3(priv, "failed send event "
			   "(status=%d, wrid=%d vend_err %x)\n",
			   wc->status, wr_id, wc->vendor_err);
}