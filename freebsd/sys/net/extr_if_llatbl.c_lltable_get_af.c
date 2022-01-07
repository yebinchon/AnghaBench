
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int llt_af; } ;



int
lltable_get_af(const struct lltable *llt)
{

 return (llt->llt_af);
}
