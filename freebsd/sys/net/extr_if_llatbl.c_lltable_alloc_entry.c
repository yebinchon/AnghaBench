
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr {int dummy; } ;
struct lltable {struct llentry* (* llt_alloc_entry ) (struct lltable*,int ,struct sockaddr const*) ;} ;
struct llentry {int dummy; } ;


 struct llentry* stub1 (struct lltable*,int ,struct sockaddr const*) ;

struct llentry *
lltable_alloc_entry(struct lltable *llt, u_int flags,
    const struct sockaddr *l3addr)
{

 return (llt->llt_alloc_entry(llt, flags, l3addr));
}
