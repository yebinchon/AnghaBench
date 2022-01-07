
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcblbgrouphead {int dummy; } ;
struct inpcblbgroup {int il_inpcnt; int il_inpsiz; int * il_inp; int il_dependladdr; int il_lport; int il_vflag; } ;


 int KASSERT (int,char*) ;
 struct inpcblbgroup* in_pcblbgroup_alloc (struct inpcblbgrouphead*,int ,int ,int *,int) ;
 int in_pcblbgroup_free (struct inpcblbgroup*) ;

__attribute__((used)) static struct inpcblbgroup *
in_pcblbgroup_resize(struct inpcblbgrouphead *hdr,
    struct inpcblbgroup *old_grp, int size)
{
 struct inpcblbgroup *grp;
 int i;

 grp = in_pcblbgroup_alloc(hdr, old_grp->il_vflag,
     old_grp->il_lport, &old_grp->il_dependladdr, size);
 if (grp == ((void*)0))
  return (((void*)0));

 KASSERT(old_grp->il_inpcnt < grp->il_inpsiz,
     ("invalid new local group size %d and old local group count %d",
      grp->il_inpsiz, old_grp->il_inpcnt));

 for (i = 0; i < old_grp->il_inpcnt; ++i)
  grp->il_inp[i] = old_grp->il_inp[i];
 grp->il_inpcnt = old_grp->il_inpcnt;
 in_pcblbgroup_free(old_grp);
 return (grp);
}
