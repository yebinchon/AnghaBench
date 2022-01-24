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
struct mlx4_en_tx_ring {int /*<<< orphan*/  tx_lock; } ;
struct mlx4_en_priv {scalar_t__ port_up; int tx_ring_num; struct mlx4_en_tx_ring** tx_ring; } ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int FUNC3 (struct ifnet*,struct mbuf*) ; 
 int FUNC4 (struct ifnet*,int,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_en_priv*,int) ; 
 struct mlx4_en_priv* FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

int
FUNC10(struct ifnet *dev, struct mbuf *m)
{
	struct mlx4_en_priv *priv = FUNC6(dev);
	struct mlx4_en_tx_ring *ring;
	int i, err = 0;

	if (priv->port_up == 0) {
		FUNC2(m);
		return (ENETDOWN);
	}

	/* Compute which queue to use */
	if (FUNC0(m) != M_HASHTYPE_NONE) {
		i = (m->m_pkthdr.flowid % 128) % priv->tx_ring_num;
	}
	else {
		i = FUNC3(dev, m);
	}

	ring = priv->tx_ring[i];

	FUNC7(&ring->tx_lock);

	err = FUNC4(dev, i, m);
	FUNC8(&ring->tx_lock);

	/* Poll CQ here */
	FUNC5(priv, i);

#if __FreeBSD_version >= 1100000
	if (unlikely(err != 0))
		if_inc_counter(dev, IFCOUNTER_IQDROPS, 1);
#endif
	return (err);
}