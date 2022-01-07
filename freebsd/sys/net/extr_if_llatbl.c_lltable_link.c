
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int dummy; } ;


 int LLTABLE_LIST_WLOCK () ;
 int LLTABLE_LIST_WUNLOCK () ;
 int SLIST_INSERT_HEAD (int *,struct lltable*,int ) ;
 int V_lltables ;
 int llt_link ;

void
lltable_link(struct lltable *llt)
{

 LLTABLE_LIST_WLOCK();
 SLIST_INSERT_HEAD(&V_lltables, llt, llt_link);
 LLTABLE_LIST_WUNLOCK();
}
