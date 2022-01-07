
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int (* llt_foreach_entry ) (struct lltable*,int *,void*) ;} ;
typedef int llt_foreach_cb_t ;


 int stub1 (struct lltable*,int *,void*) ;

int
lltable_foreach_lle(struct lltable *llt, llt_foreach_cb_t *f, void *farg)
{

 return (llt->llt_foreach_entry(llt, f, farg));
}
