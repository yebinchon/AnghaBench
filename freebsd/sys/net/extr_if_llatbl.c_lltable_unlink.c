
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int dummy; } ;


 int LLTABLE_LIST_WLOCK () ;
 int LLTABLE_LIST_WUNLOCK () ;
 int SLIST_REMOVE (int *,struct lltable*,int ,int ) ;
 int V_lltables ;
 int llt_link ;
 int lltable ;

__attribute__((used)) static void
lltable_unlink(struct lltable *llt)
{

 LLTABLE_LIST_WLOCK();
 SLIST_REMOVE(&V_lltables, llt, lltable, llt_link);
 LLTABLE_LIST_WUNLOCK();

}
