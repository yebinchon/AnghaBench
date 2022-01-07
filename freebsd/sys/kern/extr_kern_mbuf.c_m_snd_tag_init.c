
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_snd_tag {int refcount; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int counter_u64_add (int ,int) ;
 int if_ref (struct ifnet*) ;
 int refcount_init (int *,int) ;
 int snd_tag_count ;

void
m_snd_tag_init(struct m_snd_tag *mst, struct ifnet *ifp)
{

 if_ref(ifp);
 mst->ifp = ifp;
 refcount_init(&mst->refcount, 1);
 counter_u64_add(snd_tag_count, 1);
}
