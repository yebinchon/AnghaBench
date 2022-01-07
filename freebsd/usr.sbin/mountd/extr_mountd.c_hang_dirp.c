
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xucred {int dummy; } ;
struct hostlist {struct hostlist* ht_next; struct grouplist* ht_grp; } ;
struct grouplist {scalar_t__ gr_numsecflavors; struct grouplist* gr_next; int gr_secflavors; } ;
struct exportlist {scalar_t__ ex_defnumsecflavors; scalar_t__ ex_numsecflavors; int ex_defexflags; int ex_dirl; int ex_secflavors; struct dirlist* ex_defdir; struct xucred ex_defanon; int ex_defsecflavors; int ex_flag; } ;
struct dirlist {struct dirlist* dp_left; struct hostlist* dp_hosts; int dp_flag; } ;
typedef int caddr_t ;


 int DP_DEFSET ;
 int EX_DEFSET ;
 int OP_ALLDIRS ;
 int add_dlist (int *,struct dirlist*,struct grouplist*,int,struct exportlist*,struct xucred*,int) ;
 int free (int ) ;
 struct hostlist* get_ht () ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
hang_dirp(struct dirlist *dp, struct grouplist *grp, struct exportlist *ep,
 int flags, struct xucred *anoncrp, int exflags)
{
 struct hostlist *hp;
 struct dirlist *dp2;

 if (flags & OP_ALLDIRS) {
  if (ep->ex_defdir)
   free((caddr_t)dp);
  else
   ep->ex_defdir = dp;
  if (grp == (struct grouplist *)((void*)0)) {
   ep->ex_flag |= EX_DEFSET;
   ep->ex_defdir->dp_flag |= DP_DEFSET;

   ep->ex_defnumsecflavors = ep->ex_numsecflavors;
   if (ep->ex_numsecflavors > 0)
    memcpy(ep->ex_defsecflavors, ep->ex_secflavors,
        sizeof(ep->ex_secflavors));
   ep->ex_defanon = *anoncrp;
   ep->ex_defexflags = exflags;
  } else while (grp) {
   hp = get_ht();
   hp->ht_grp = grp;
   hp->ht_next = ep->ex_defdir->dp_hosts;
   ep->ex_defdir->dp_hosts = hp;

   grp->gr_numsecflavors = ep->ex_numsecflavors;
   if (ep->ex_numsecflavors > 0)
    memcpy(grp->gr_secflavors, ep->ex_secflavors,
        sizeof(ep->ex_secflavors));
   grp = grp->gr_next;
  }
 } else {




  while (dp) {
   dp2 = dp->dp_left;
   add_dlist(&ep->ex_dirl, dp, grp, flags, ep, anoncrp,
       exflags);
   dp = dp2;
  }
 }
}
