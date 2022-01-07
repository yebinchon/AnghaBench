
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int num_tx_rings_p_up; } ;
struct TYPE_2__ {int ether_vtag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int MBUF_HASHFLAG_L3 ;
 int MBUF_HASHFLAG_L4 ;
 int MLX4_EN_NUM_UP ;
 int M_VLANTAG ;
 int hashrandom ;
 int m_ether_tcpip_hash (int,struct mbuf*,int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

u16 mlx4_en_select_queue(struct net_device *dev, struct mbuf *mb)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 u32 rings_p_up = priv->num_tx_rings_p_up;
 u32 up = 0;
 u32 queue_index;
 queue_index = m_ether_tcpip_hash(MBUF_HASHFLAG_L3 | MBUF_HASHFLAG_L4, mb, hashrandom);

 return ((queue_index % rings_p_up) + (up * rings_p_up));
}
