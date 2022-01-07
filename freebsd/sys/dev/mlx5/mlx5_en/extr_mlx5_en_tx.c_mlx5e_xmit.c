
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_sq {int lock; } ;
struct TYPE_4__ {int csum_flags; TYPE_1__* snd_tag; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {struct ifnet* ifp; } ;


 int CSUM_SND_TAG ;
 int ENXIO ;
 int MPASS (int) ;
 int m_freem (struct mbuf*) ;
 struct mlx5e_sq* mlx5e_select_queue (struct ifnet*,struct mbuf*) ;
 struct mlx5e_sq* mlx5e_select_queue_by_send_tag (struct ifnet*,struct mbuf*) ;
 int mlx5e_xmit_locked (struct ifnet*,struct mlx5e_sq*,struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

int
mlx5e_xmit(struct ifnet *ifp, struct mbuf *mb)
{
 struct mlx5e_sq *sq;
 int ret;

 if (mb->m_pkthdr.csum_flags & CSUM_SND_TAG) {
  MPASS(mb->m_pkthdr.snd_tag->ifp == ifp);
  sq = mlx5e_select_queue_by_send_tag(ifp, mb);
  if (unlikely(sq == ((void*)0))) {
   goto select_queue;
  }
 } else {
select_queue:
  sq = mlx5e_select_queue(ifp, mb);
  if (unlikely(sq == ((void*)0))) {

   m_freem(mb);


   return (ENXIO);
  }
 }

 mtx_lock(&sq->lock);
 ret = mlx5e_xmit_locked(ifp, sq, mb);
 mtx_unlock(&sq->lock);

 return (ret);
}
