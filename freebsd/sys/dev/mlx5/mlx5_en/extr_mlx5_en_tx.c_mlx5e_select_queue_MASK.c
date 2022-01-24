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
typedef  int u32 ;
struct mlx5e_sq {int /*<<< orphan*/  running; } ;
struct TYPE_4__ {int num_channels; } ;
struct mlx5e_priv {int num_tc; int default_vlan_prio; TYPE_3__* channel; TYPE_1__ params; } ;
struct TYPE_5__ {int ether_vtag; int flowid; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;
struct TYPE_6__ {struct mlx5e_sq* sq; } ;

/* Variables and functions */
 int MBUF_HASHFLAG_L3 ; 
 int MBUF_HASHFLAG_L4 ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 int M_VLANTAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5e_hash_value ; 
 scalar_t__ FUNC4 (int,scalar_t__,int*) ; 

__attribute__((used)) static struct mlx5e_sq *
FUNC5(struct ifnet *ifp, struct mbuf *mb)
{
	struct mlx5e_priv *priv = ifp->if_softc;
	struct mlx5e_sq *sq;
	u32 ch;
	u32 tc;

	/* obtain VLAN information if present */
	if (mb->m_flags & M_VLANTAG) {
		tc = (mb->m_pkthdr.ether_vtag >> 13);
		if (tc >= priv->num_tc)
			tc = priv->default_vlan_prio;
	} else {
		tc = priv->default_vlan_prio;
	}

	ch = priv->params.num_channels;

	/* check if flowid is set */
	if (FUNC0(mb) != M_HASHTYPE_NONE) {
#ifdef RSS
		u32 temp;

		if (rss_hash2bucket(mb->m_pkthdr.flowid,
		    M_HASHTYPE_GET(mb), &temp) == 0)
			ch = temp % ch;
		else
#endif
			ch = (mb->m_pkthdr.flowid % 128) % ch;
	} else {
#if (__FreeBSD_version >= 1100000)
		ch = m_ether_tcpip_hash(MBUF_HASHFLAG_L3 |
		    MBUF_HASHFLAG_L4, mb, mlx5e_hash_value) % ch;
#else
		/*
		 * m_ether_tcpip_hash not present in stable, so just
		 * throw unhashed mbufs on queue 0
		 */
		ch = 0;
#endif
	}

	/* check if send queue is running */
	sq = &priv->channel[ch].sq[tc];
	if (FUNC2(FUNC1(sq->running) != 0))
		return (sq);
	return (NULL);
}