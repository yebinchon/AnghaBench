
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {int lle_hittime; scalar_t__ r_skip_req; } ;


 int LLE_REQ_LOCK (struct llentry*) ;
 int LLE_REQ_UNLOCK (struct llentry*) ;
 int time_uptime ;

__attribute__((used)) static void
in6_lltable_mark_used(struct llentry *lle)
{

 LLE_REQ_LOCK(lle);
 lle->r_skip_req = 0;






 lle->lle_hittime = time_uptime;
 LLE_REQ_UNLOCK(lle);
}
