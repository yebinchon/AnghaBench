
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xucred {int dummy; } ;
struct hostlist {struct hostlist* ht_next; struct grouplist* ht_grp; } ;
struct grouplist {scalar_t__ gr_numsecflavors; struct grouplist* gr_next; int gr_secflavors; } ;
struct exportlist {scalar_t__ ex_numsecflavors; scalar_t__ ex_defnumsecflavors; int ex_defexflags; struct xucred ex_defanon; int ex_secflavors; int ex_defsecflavors; int ex_flag; } ;
struct dirlist {int dp_flag; struct hostlist* dp_hosts; struct dirlist* dp_left; struct dirlist* dp_right; int dp_dirp; } ;
typedef int caddr_t ;


 int DP_DEFSET ;
 int EX_DEFSET ;
 int free (int ) ;
 struct hostlist* get_ht () ;
 int memcpy (int ,int ,int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void
add_dlist(struct dirlist **dpp, struct dirlist *newdp, struct grouplist *grp,
 int flags, struct exportlist *ep, struct xucred *anoncrp, int exflags)
{
 struct dirlist *dp;
 struct hostlist *hp;
 int cmp;

 dp = *dpp;
 if (dp) {
  cmp = strcmp(dp->dp_dirp, newdp->dp_dirp);
  if (cmp > 0) {
   add_dlist(&dp->dp_left, newdp, grp, flags, ep, anoncrp,
       exflags);
   return;
  } else if (cmp < 0) {
   add_dlist(&dp->dp_right, newdp, grp, flags, ep, anoncrp,
       exflags);
   return;
  } else
   free((caddr_t)newdp);
 } else {
  dp = newdp;
  dp->dp_left = (struct dirlist *)((void*)0);
  *dpp = dp;
 }
 if (grp) {




  do {
   hp = get_ht();
   hp->ht_grp = grp;
   hp->ht_next = dp->dp_hosts;
   dp->dp_hosts = hp;

   grp->gr_numsecflavors = ep->ex_numsecflavors;
   if (ep->ex_numsecflavors > 0)
    memcpy(grp->gr_secflavors, ep->ex_secflavors,
        sizeof(ep->ex_secflavors));
   grp = grp->gr_next;
  } while (grp);
 } else {
  ep->ex_flag |= EX_DEFSET;
  dp->dp_flag |= DP_DEFSET;

  ep->ex_defnumsecflavors = ep->ex_numsecflavors;
  if (ep->ex_numsecflavors > 0)
   memcpy(ep->ex_defsecflavors, ep->ex_secflavors,
       sizeof(ep->ex_secflavors));
  ep->ex_defanon = *anoncrp;
  ep->ex_defexflags = exflags;
 }
}
