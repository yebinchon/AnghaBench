
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_4__ {int uz_flags; } ;


 int MPASS (int) ;
 int UMA_ZONE_PCPU ;
 int uma_zfree_arg (TYPE_1__*,void*,void*) ;

void
uma_zfree_pcpu_arg(uma_zone_t zone, void *item, void *udata)
{




 uma_zfree_arg(zone, item, udata);
}
