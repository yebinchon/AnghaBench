
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grouplist {struct grouplist* gr_next; } ;
struct exportlist {struct grouplist* ex_grphead; int ex_dirl; scalar_t__ ex_indexfile; scalar_t__ ex_fsdir; TYPE_1__* ex_defdir; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int dp_hosts; } ;


 int free (scalar_t__) ;
 int free_dir (int ) ;
 int free_grp (struct grouplist*) ;
 int free_host (int ) ;

__attribute__((used)) static void
free_exp(struct exportlist *ep)
{
 struct grouplist *grp, *tgrp;

 if (ep->ex_defdir) {
  free_host(ep->ex_defdir->dp_hosts);
  free((caddr_t)ep->ex_defdir);
 }
 if (ep->ex_fsdir)
  free(ep->ex_fsdir);
 if (ep->ex_indexfile)
  free(ep->ex_indexfile);
 free_dir(ep->ex_dirl);
 grp = ep->ex_grphead;
 while (grp) {
  tgrp = grp;
  grp = grp->gr_next;
  free_grp(tgrp);
 }
 free((caddr_t)ep);
}
