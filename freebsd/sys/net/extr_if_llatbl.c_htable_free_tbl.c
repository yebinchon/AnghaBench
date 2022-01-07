
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {struct lltable* lle_head; } ;


 int M_LLTABLE ;
 int free (struct lltable*,int ) ;

__attribute__((used)) static void
htable_free_tbl(struct lltable *llt)
{

 free(llt->lle_head, M_LLTABLE);
 free(llt, M_LLTABLE);
}
