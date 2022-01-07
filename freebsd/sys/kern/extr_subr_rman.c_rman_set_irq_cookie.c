
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {TYPE_1__* __r_i; } ;
struct TYPE_2__ {void* r_irq_cookie; } ;



void
rman_set_irq_cookie(struct resource *r, void *c)
{

 r->__r_i->r_irq_cookie = c;
}
