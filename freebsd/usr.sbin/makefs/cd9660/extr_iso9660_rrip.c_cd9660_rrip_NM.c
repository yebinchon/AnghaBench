
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* node; } ;
typedef TYPE_2__ cd9660node ;
struct TYPE_5__ {int name; } ;


 int cd9660_rrip_add_NM (TYPE_2__*,int ) ;

void
cd9660_rrip_NM(cd9660node *node)
{
 cd9660_rrip_add_NM(node, node->node->name);
}
