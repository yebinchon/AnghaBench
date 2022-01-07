
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* item_p ;
struct TYPE_2__ {int nd_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 TYPE_1__* NGI_NODE (void*) ;
 int ng_snd_item (void*,int ) ;

__attribute__((used)) static void
ng_callout_trampoline(void *arg)
{
 item_p item = arg;

 CURVNET_SET(NGI_NODE(item)->nd_vnet);
 ng_snd_item(item, 0);
 CURVNET_RESTORE();
}
