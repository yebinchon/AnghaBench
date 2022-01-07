
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_req {int dummy; } ;
struct lltable {scalar_t__ llt_dump_entry; TYPE_1__* llt_ifp; } ;
struct epoch_tracker {int dummy; } ;
typedef int llt_foreach_cb_t ;
struct TYPE_2__ {int if_flags; } ;


 int IFF_LOOPBACK ;
 int LLTABLE_LIST_LOCK_ASSERT () ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int lltable_foreach_lle (struct lltable*,int *,struct sysctl_req*) ;

__attribute__((used)) static int
lltable_dump_af(struct lltable *llt, struct sysctl_req *wr)
{
 struct epoch_tracker et;
 int error;

 LLTABLE_LIST_LOCK_ASSERT();

 if (llt->llt_ifp->if_flags & IFF_LOOPBACK)
  return (0);
 error = 0;

 NET_EPOCH_ENTER(et);
 error = lltable_foreach_lle(llt,
     (llt_foreach_cb_t *)llt->llt_dump_entry, wr);
 NET_EPOCH_EXIT(et);

 return (error);
}
