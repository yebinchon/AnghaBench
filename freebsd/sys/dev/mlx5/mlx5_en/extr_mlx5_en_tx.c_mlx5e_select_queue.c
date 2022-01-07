
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_sq {int running; } ;
struct TYPE_4__ {int num_channels; } ;
struct mlx5e_priv {int num_tc; int default_vlan_prio; TYPE_3__* channel; TYPE_1__ params; } ;
struct TYPE_5__ {int ether_vtag; int flowid; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;
struct TYPE_6__ {struct mlx5e_sq* sq; } ;


 int MBUF_HASHFLAG_L3 ;
 int MBUF_HASHFLAG_L4 ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 int M_VLANTAG ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ likely (int) ;
 int m_ether_tcpip_hash (int,struct mbuf*,int ) ;
 int mlx5e_hash_value ;
 scalar_t__ rss_hash2bucket (int,scalar_t__,int*) ;

__attribute__((used)) static struct mlx5e_sq *
mlx5e_select_queue(struct ifnet *ifp, struct mbuf *mb)
{
 struct mlx5e_priv *priv = ifp->if_softc;
 struct mlx5e_sq *sq;
 u32 ch;
 u32 tc;


 if (mb->m_flags & M_VLANTAG) {
  tc = (mb->m_pkthdr.ether_vtag >> 13);
  if (tc >= priv->num_tc)
   tc = priv->default_vlan_prio;
 } else {
  tc = priv->default_vlan_prio;
 }

 ch = priv->params.num_channels;


 if (M_HASHTYPE_GET(mb) != M_HASHTYPE_NONE) {
   ch = (mb->m_pkthdr.flowid % 128) % ch;
 } else {
  ch = 0;

 }


 sq = &priv->channel[ch].sq[tc];
 if (likely(READ_ONCE(sq->running) != 0))
  return (sq);
 return (((void*)0));
}
