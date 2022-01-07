
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcbgroup {int dummy; } ;
struct inpcb {int inp_flags2; struct inpcbgroup* inp_pcbgroup; int inp_pcbinfo; } ;


 int CK_LIST_REMOVE (struct inpcb*,int ) ;
 int INP_GROUP_LOCK (struct inpcbgroup*) ;
 int INP_GROUP_UNLOCK (struct inpcbgroup*) ;
 int INP_PCBGROUPWILD ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int in_pcbgroup_enabled (int ) ;
 int in_pcbwild_remove (struct inpcb*) ;
 int inp_pcbgrouphash ;

void
in_pcbgroup_remove(struct inpcb *inp)
{
 struct inpcbgroup *pcbgroup;

 INP_WLOCK_ASSERT(inp);

 if (!in_pcbgroup_enabled(inp->inp_pcbinfo))
  return;

 if (inp->inp_flags2 & INP_PCBGROUPWILD)
  in_pcbwild_remove(inp);

 pcbgroup = inp->inp_pcbgroup;
 if (pcbgroup != ((void*)0)) {
  INP_GROUP_LOCK(pcbgroup);
  CK_LIST_REMOVE(inp, inp_pcbgrouphash);
  inp->inp_pcbgroup = ((void*)0);
  INP_GROUP_UNLOCK(pcbgroup);
 }
}
