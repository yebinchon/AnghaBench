
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipi_zone; } ;


 TYPE_1__ V_divcbinfo ;
 int maxsockets ;
 int uma_zone_set_max (int ,int ) ;

__attribute__((used)) static void
div_zone_change(void *tag)
{

 uma_zone_set_max(V_divcbinfo.ipi_zone, maxsockets);
}
