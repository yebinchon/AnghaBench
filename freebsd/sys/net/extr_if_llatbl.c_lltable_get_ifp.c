
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {struct ifnet* llt_ifp; } ;
struct ifnet {int dummy; } ;



struct ifnet *
lltable_get_ifp(const struct lltable *llt)
{

 return (llt->llt_ifp);
}
