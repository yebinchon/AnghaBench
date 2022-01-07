
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grouplist {int gr_flag; scalar_t__ gr_numsecflavors; scalar_t__ gr_exflags; struct grouplist* gr_next; int gr_secflavors; int gr_anon; } ;
struct exportlist {int ex_flag; scalar_t__ ex_defnumsecflavors; scalar_t__ ex_defexflags; struct grouplist* ex_grphead; int ex_defsecflavors; int ex_defanon; TYPE_1__* ex_defdir; int ex_fsdir; } ;
struct TYPE_2__ {int dp_flag; } ;


 int DP_DEFSET ;
 int EX_DEFSET ;
 int GR_FND ;
 scalar_t__ compare_cred (int *,int *) ;
 scalar_t__ compare_secflavor (int ,int ,scalar_t__) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
compare_export(struct exportlist *ep, struct exportlist *oep)
{
 struct grouplist *grp, *ogrp;

 if (strcmp(ep->ex_fsdir, oep->ex_fsdir) != 0)
  return (1);
 if ((ep->ex_flag & EX_DEFSET) != (oep->ex_flag & EX_DEFSET))
  return (1);
 if ((ep->ex_defdir != ((void*)0) && oep->ex_defdir == ((void*)0)) ||
     (ep->ex_defdir == ((void*)0) && oep->ex_defdir != ((void*)0)))
  return (1);
 if (ep->ex_defdir != ((void*)0) && (ep->ex_defdir->dp_flag & DP_DEFSET) !=
     (oep->ex_defdir->dp_flag & DP_DEFSET))
  return (1);
 if ((ep->ex_flag & EX_DEFSET) != 0 && (ep->ex_defnumsecflavors !=
     oep->ex_defnumsecflavors || ep->ex_defexflags !=
     oep->ex_defexflags || compare_cred(&ep->ex_defanon,
     &oep->ex_defanon) != 0 || compare_secflavor(ep->ex_defsecflavors,
     oep->ex_defsecflavors, ep->ex_defnumsecflavors) != 0))
  return (1);


 for (ogrp = oep->ex_grphead; ogrp != ((void*)0); ogrp = ogrp->gr_next)
  ogrp->gr_flag = 0;
 for (grp = ep->ex_grphead; grp != ((void*)0); grp = grp->gr_next) {
  for (ogrp = oep->ex_grphead; ogrp != ((void*)0); ogrp =
      ogrp->gr_next)
   if ((ogrp->gr_flag & GR_FND) == 0 &&
       grp->gr_numsecflavors == ogrp->gr_numsecflavors &&
       grp->gr_exflags == ogrp->gr_exflags &&
       compare_cred(&grp->gr_anon, &ogrp->gr_anon) == 0 &&
       compare_secflavor(grp->gr_secflavors,
       ogrp->gr_secflavors, grp->gr_numsecflavors) == 0)
    break;
  if (ogrp != ((void*)0))
   ogrp->gr_flag |= GR_FND;
  else
   return (1);
 }
 for (ogrp = oep->ex_grphead; ogrp != ((void*)0); ogrp = ogrp->gr_next)
  if ((ogrp->gr_flag & GR_FND) == 0)
   return (1);
 return (0);
}
