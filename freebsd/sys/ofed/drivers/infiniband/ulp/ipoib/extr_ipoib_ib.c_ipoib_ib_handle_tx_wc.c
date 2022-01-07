
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_tx_buf {int mb; } ;
struct ipoib_dev_priv {unsigned int tx_outstanding; int flags; int tx_tail; int ca; struct ipoib_tx_buf* tx_ring; struct ifnet* dev; } ;
struct ifnet {int if_drv_flags; } ;
struct ib_wc {unsigned int wr_id; int vendor_err; int status; } ;


 int IB_WC_SUCCESS ;
 int IB_WC_WR_FLUSH_ERR ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IPOIB_FLAG_ADMIN_UP ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int ipoib_dbg_data (struct ipoib_dev_priv*,char*,unsigned int,int ) ;
 int ipoib_dma_unmap_tx (int ,struct ipoib_tx_buf*) ;
 unsigned int ipoib_sendq_size ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,unsigned int,unsigned int,...) ;
 int m_freem (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ipoib_ib_handle_tx_wc(struct ipoib_dev_priv *priv, struct ib_wc *wc)
{
 struct ifnet *dev = priv->dev;
 unsigned int wr_id = wc->wr_id;
 struct ipoib_tx_buf *tx_req;

 ipoib_dbg_data(priv, "send completion: id %d, status: %d\n",
         wr_id, wc->status);

 if (unlikely(wr_id >= ipoib_sendq_size)) {
  ipoib_warn(priv, "send completion event with wrid %d (> %d)\n",
      wr_id, ipoib_sendq_size);
  return;
 }

 tx_req = &priv->tx_ring[wr_id];

 ipoib_dma_unmap_tx(priv->ca, tx_req);

 if_inc_counter(dev, IFCOUNTER_OPACKETS, 1);

 m_freem(tx_req->mb);

 ++priv->tx_tail;
 if (unlikely(--priv->tx_outstanding == ipoib_sendq_size >> 1) &&
     (dev->if_drv_flags & IFF_DRV_OACTIVE) &&
     test_bit(IPOIB_FLAG_ADMIN_UP, &priv->flags))
  dev->if_drv_flags &= ~IFF_DRV_OACTIVE;

 if (wc->status != IB_WC_SUCCESS &&
     wc->status != IB_WC_WR_FLUSH_ERR)
  ipoib_warn(priv, "failed send event "
      "(status=%d, wrid=%d vend_err %x)\n",
      wc->status, wr_id, wc->vendor_err);
}
