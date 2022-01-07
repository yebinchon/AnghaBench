
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int csum_flags; struct m_snd_tag* snd_tag; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_snd_tag {int dummy; } ;
struct lagg_snd_tag {TYPE_2__* tag; } ;
struct ifnet {int (* if_transmit ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_4__ {struct ifnet* ifp; } ;


 int CSUM_SND_TAG ;
 int EAGAIN ;
 int m_freem (struct mbuf*) ;
 struct m_snd_tag* m_snd_tag_ref (TYPE_2__*) ;
 int m_snd_tag_rele (struct m_snd_tag*) ;
 struct lagg_snd_tag* mst_to_lst (struct m_snd_tag*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

int
lagg_enqueue(struct ifnet *ifp, struct mbuf *m)
{
 return (ifp->if_transmit)(ifp, m);
}
