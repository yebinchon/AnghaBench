
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct callout_cpu {int cc_callfree; } ;
struct callout {int c_iflags; int * c_func; } ;
struct TYPE_2__ {int sle; } ;


 int CALLOUT_LOCAL_ALLOC ;
 int SLIST_INSERT_HEAD (int *,struct callout*,int ) ;
 TYPE_1__ c_links ;

__attribute__((used)) static void
callout_cc_del(struct callout *c, struct callout_cpu *cc)
{

 if ((c->c_iflags & CALLOUT_LOCAL_ALLOC) == 0)
  return;
 c->c_func = ((void*)0);
 SLIST_INSERT_HEAD(&cc->cc_callfree, c, c_links.sle);
}
