
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lltable {TYPE_1__* llt_ifp; } ;
struct TYPE_4__ {int if_flags; } ;


 int IFF_LOOPBACK ;
 int IF_AFDATA_WLOCK (TYPE_1__*) ;
 int IF_AFDATA_WUNLOCK (TYPE_1__*) ;
 int llentry_update_ifaddr ;
 int lltable_foreach_lle (struct lltable*,int ,TYPE_1__*) ;

void
lltable_update_ifaddr(struct lltable *llt)
{

 if (llt->llt_ifp->if_flags & IFF_LOOPBACK)
  return;

 IF_AFDATA_WLOCK(llt->llt_ifp);
 lltable_foreach_lle(llt, llentry_update_ifaddr, llt->llt_ifp);
 IF_AFDATA_WUNLOCK(llt->llt_ifp);
}
