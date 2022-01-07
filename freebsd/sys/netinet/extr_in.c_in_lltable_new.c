
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct in_addr {int dummy; } ;
struct TYPE_2__ {struct in_addr addr4; } ;
struct llentry {int lle_refcnt; int lle_timer; int lle_free; TYPE_1__ r_l3addr; int la_expire; } ;
struct in_llentry {struct llentry base; } ;


 int LLE_LOCK_INIT (struct llentry*) ;
 int LLE_REQ_INIT (struct llentry*) ;
 int M_LLTABLE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int callout_init (int *,int) ;
 int in_lltable_destroy_lle ;
 struct in_llentry* malloc (int,int ,int) ;
 int time_uptime ;

__attribute__((used)) static struct llentry *
in_lltable_new(struct in_addr addr4, u_int flags)
{
 struct in_llentry *lle;

 lle = malloc(sizeof(struct in_llentry), M_LLTABLE, M_NOWAIT | M_ZERO);
 if (lle == ((void*)0))
  return ((void*)0);





 lle->base.la_expire = time_uptime;
 lle->base.r_l3addr.addr4 = addr4;
 lle->base.lle_refcnt = 1;
 lle->base.lle_free = in_lltable_destroy_lle;
 LLE_LOCK_INIT(&lle->base);
 LLE_REQ_INIT(&lle->base);
 callout_init(&lle->base.lle_timer, 1);

 return (&lle->base);
}
