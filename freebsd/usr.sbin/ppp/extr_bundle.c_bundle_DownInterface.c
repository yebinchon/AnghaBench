
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bundle {TYPE_1__* iface; } ;
struct TYPE_2__ {int name; } ;


 int IFF_UP ;
 int iface_ClearFlags (int ,int ) ;
 int route_IfDelete (struct bundle*,int) ;

__attribute__((used)) static void
bundle_DownInterface(struct bundle *bundle)
{
  route_IfDelete(bundle, 1);
  iface_ClearFlags(bundle->iface->name, IFF_UP);
}
