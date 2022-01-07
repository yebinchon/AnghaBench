
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_snd_tag {struct ifnet* ifp; } ;
struct ifnet {int (* if_snd_tag_free ) (struct m_snd_tag*) ;} ;


 int counter_u64_add (int ,int) ;
 int if_rele (struct ifnet*) ;
 int snd_tag_count ;
 int stub1 (struct m_snd_tag*) ;

void
m_snd_tag_destroy(struct m_snd_tag *mst)
{
 struct ifnet *ifp;

 ifp = mst->ifp;
 ifp->if_snd_tag_free(mst);
 if_rele(ifp);
 counter_u64_add(snd_tag_count, -1);
}
