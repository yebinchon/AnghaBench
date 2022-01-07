
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int dummy; } ;
typedef int ksiginfo_t ;


 int PGRP_UNLOCK (struct pgrp*) ;
 struct pgrp* pgfind (int) ;
 int pgsignal (struct pgrp*,int,int ,int *) ;
 int proctree_lock ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

void
gsignal(int pgid, int sig, ksiginfo_t *ksi)
{
 struct pgrp *pgrp;

 if (pgid != 0) {
  sx_slock(&proctree_lock);
  pgrp = pgfind(pgid);
  sx_sunlock(&proctree_lock);
  if (pgrp != ((void*)0)) {
   pgsignal(pgrp, sig, 0, ksi);
   PGRP_UNLOCK(pgrp);
  }
 }
}
