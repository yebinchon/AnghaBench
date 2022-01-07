
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {scalar_t__ pg_jobc; } ;


 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int orphanpg (struct pgrp*) ;

__attribute__((used)) static void
pgadjustjobc(struct pgrp *pgrp, int entering)
{

 PGRP_LOCK(pgrp);
 if (entering)
  pgrp->pg_jobc++;
 else {
  --pgrp->pg_jobc;
  if (pgrp->pg_jobc == 0)
   orphanpg(pgrp);
 }
 PGRP_UNLOCK(pgrp);
}
