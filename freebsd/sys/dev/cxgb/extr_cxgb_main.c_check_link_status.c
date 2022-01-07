
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ link_ok; } ;
struct TYPE_3__ {int caps; } ;
struct port_info {int link_check_ch; TYPE_2__ link_config; TYPE_1__ phy; scalar_t__ link_fault; int port_id; struct adapter* adapter; } ;
struct adapter {int open_device_map; } ;


 int SUPPORTED_LINK_IRQ ;
 int callout_reset (int *,int ,int ,struct port_info*) ;
 int hz ;
 int isset (int *,int ) ;
 int link_check_callout ;
 int t3_link_changed (struct adapter*,int ) ;

__attribute__((used)) static void
check_link_status(void *arg, int pending)
{
 struct port_info *pi = arg;
 struct adapter *sc = pi->adapter;

 if (!isset(&sc->open_device_map, pi->port_id))
  return;

 t3_link_changed(sc, pi->port_id);

 if (pi->link_fault || !(pi->phy.caps & SUPPORTED_LINK_IRQ) ||
     pi->link_config.link_ok == 0)
  callout_reset(&pi->link_check_ch, hz, link_check_callout, pi);
}
