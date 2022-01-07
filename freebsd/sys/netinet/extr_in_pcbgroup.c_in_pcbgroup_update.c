
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcbinfo {int dummy; } ;
struct inpcbgroup {int dummy; } ;
struct inpcb {int inp_flags2; int inp_flags; int inp_vflag; struct inpcbinfo* inp_pcbinfo; } ;


 int INP_DROPPED ;
 int INP_IPV6 ;
 int INP_PCBGROUPWILD ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 struct inpcbgroup* in6_pcbgroup_byinpcb (struct inpcb*) ;
 struct inpcbgroup* in_pcbgroup_byinpcb (struct inpcb*) ;
 int in_pcbgroup_enabled (struct inpcbinfo*) ;
 int in_pcbgroup_update_internal (struct inpcbinfo*,struct inpcbgroup*,struct inpcb*) ;
 int in_pcbwild_update_internal (struct inpcb*) ;

void
in_pcbgroup_update(struct inpcb *inp)
{
 struct inpcbinfo *pcbinfo;
 struct inpcbgroup *newpcbgroup;

 INP_WLOCK_ASSERT(inp);

 pcbinfo = inp->inp_pcbinfo;
 if (!in_pcbgroup_enabled(pcbinfo))
  return;

 in_pcbwild_update_internal(inp);
 if (!(inp->inp_flags2 & INP_PCBGROUPWILD) &&
     !(inp->inp_flags & INP_DROPPED)) {





   newpcbgroup = in_pcbgroup_byinpcb(inp);
 } else
  newpcbgroup = ((void*)0);
 in_pcbgroup_update_internal(pcbinfo, newpcbgroup, inp);
}
