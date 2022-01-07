
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int (* llt_unlink_entry ) (struct llentry*) ;} ;
struct llentry {int dummy; } ;


 int stub1 (struct llentry*) ;

void
lltable_unlink_entry(struct lltable *llt, struct llentry *lle)
{

 llt->llt_unlink_entry(lle);
}
