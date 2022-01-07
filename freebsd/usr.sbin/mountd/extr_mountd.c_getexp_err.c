
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouplist {struct grouplist* gr_next; } ;
struct exportlist {int ex_flag; } ;


 int EX_LINKED ;
 int LOG_ERR ;
 int OP_QUIET ;
 int free_exp (struct exportlist*) ;
 int free_grp (struct grouplist*) ;
 int line ;
 int opt_flags ;
 int syslog (int ,char*,int ,...) ;

__attribute__((used)) static void
getexp_err(struct exportlist *ep, struct grouplist *grp, const char *reason)
{
 struct grouplist *tgrp;

 if (!(opt_flags & OP_QUIET)) {
  if (reason != ((void*)0))
   syslog(LOG_ERR, "bad exports list line '%s': %s", line,
       reason);
  else
   syslog(LOG_ERR, "bad exports list line '%s'", line);
 }
 if (ep && (ep->ex_flag & EX_LINKED) == 0)
  free_exp(ep);
 while (grp) {
  tgrp = grp;
  grp = grp->gr_next;
  free_grp(tgrp);
 }
}
