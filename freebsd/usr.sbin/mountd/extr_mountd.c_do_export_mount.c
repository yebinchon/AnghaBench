
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
struct grouplist {struct grouplist* gr_next; int gr_secflavors; int gr_numsecflavors; int gr_anon; int gr_exflags; int gr_type; } ;
struct exportlist {int ex_flag; int ex_fsdir; struct grouplist* ex_grphead; int ex_defsecflavors; int ex_defnumsecflavors; int ex_defanon; int ex_defexflags; } ;


 int EX_DEFSET ;
 int GT_DEFAULT ;
 int LOGDEBUG (char*,int ,...) ;
 int do_mount (struct exportlist*,struct grouplist*,int ,int *,int ,size_t,struct statfs*,int ,int ) ;
 size_t strlen (int ) ;

__attribute__((used)) static int
do_export_mount(struct exportlist *ep, struct statfs *fsp)
{
 struct grouplist *grp, defgrp;
 int ret;
 size_t dirlen;

 LOGDEBUG("do_export_mount=%s", ep->ex_fsdir);
 dirlen = strlen(ep->ex_fsdir);
 if ((ep->ex_flag & EX_DEFSET) != 0) {
  defgrp.gr_type = GT_DEFAULT;
  defgrp.gr_next = ((void*)0);

  LOGDEBUG("ex_defexflags=0x%x", ep->ex_defexflags);
  ret = do_mount(ep, &defgrp, ep->ex_defexflags, &ep->ex_defanon,
      ep->ex_fsdir, dirlen, fsp, ep->ex_defnumsecflavors,
      ep->ex_defsecflavors);
  if (ret != 0)
   return (ret);
 }


 grp = ep->ex_grphead;
 while (grp != ((void*)0)) {
  LOGDEBUG("do mount gr_type=0x%x gr_exflags=0x%x",
      grp->gr_type, grp->gr_exflags);
  ret = do_mount(ep, grp, grp->gr_exflags, &grp->gr_anon,
      ep->ex_fsdir, dirlen, fsp, grp->gr_numsecflavors,
      grp->gr_secflavors);
  if (ret != 0)
   return (ret);
  grp = grp->gr_next;
 }
 return (0);
}
