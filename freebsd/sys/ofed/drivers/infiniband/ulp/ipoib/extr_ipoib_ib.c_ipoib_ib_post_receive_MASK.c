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
struct mbuf {int /*<<< orphan*/  m_len; struct mbuf* m_next; } ;
struct ipoib_rx_buf {struct mbuf* mb; int /*<<< orphan*/ * mapping; } ;
struct TYPE_4__ {int num_sge; int wr_id; } ;
struct ipoib_dev_priv {struct ipoib_rx_buf* rx_ring; TYPE_2__ rx_wr; int /*<<< orphan*/  qp; TYPE_1__* rx_sge; } ;
struct ib_recv_wr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int IPOIB_OP_RECV ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,struct ib_recv_wr**) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,struct ipoib_rx_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ipoib_dev_priv *priv, int id)
{
	struct ipoib_rx_buf *rx_req;
	struct ib_recv_wr *bad_wr;
	struct mbuf *m;
	int ret;
	int i;

	rx_req = &priv->rx_ring[id];
	for (m = rx_req->mb, i = 0; m != NULL; m = m->m_next, i++) {
		priv->rx_sge[i].addr = rx_req->mapping[i];
		priv->rx_sge[i].length = m->m_len;
	}
	priv->rx_wr.num_sge = i;
	priv->rx_wr.wr_id = id | IPOIB_OP_RECV;

	ret = FUNC0(priv->qp, &priv->rx_wr, &bad_wr);
	if (FUNC4(ret)) {
		FUNC2(priv, "receive failed for buf %d (%d)\n", id, ret);
		FUNC1(priv, &priv->rx_ring[id]);
		FUNC3(priv->rx_ring[id].mb);
		priv->rx_ring[id].mb = NULL;
	}

	return ret;
}