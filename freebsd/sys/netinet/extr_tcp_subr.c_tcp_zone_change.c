
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipi_zone; } ;


 TYPE_1__ V_tcbinfo ;
 int V_tcpcb_zone ;
 int maxsockets ;
 int tcp_tw_zone_change () ;
 int uma_zone_set_max (int ,int ) ;

__attribute__((used)) static void
tcp_zone_change(void *tag)
{

 uma_zone_set_max(V_tcbinfo.ipi_zone, maxsockets);
 uma_zone_set_max(V_tcpcb_zone, maxsockets);
 tcp_tw_zone_change();
}
