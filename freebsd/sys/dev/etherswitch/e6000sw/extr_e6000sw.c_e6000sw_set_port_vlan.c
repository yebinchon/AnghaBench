
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int es_vlangroup; int es_vid; int es_untagged_ports; int es_member_ports; } ;
typedef TYPE_1__ etherswitch_vlangroup_t ;
struct TYPE_7__ {int num_ports; int dev; } ;
typedef TYPE_2__ e6000sw_softc_t ;


 int EINVAL ;
 int ETHERSWITCH_VID_VALID ;
 int device_printf (int ,char*) ;
 int e6000sw_port_vlan_assign (TYPE_2__*,int,int ,int ) ;

__attribute__((used)) static int
e6000sw_set_port_vlan(e6000sw_softc_t *sc, etherswitch_vlangroup_t *vg)
{
 uint32_t port;

 port = vg->es_vlangroup;
 if (port > sc->num_ports)
  return (EINVAL);

 if (vg->es_member_ports != vg->es_untagged_ports) {
  device_printf(sc->dev, "Tagged ports not supported.\n");
  return (EINVAL);
 }

 e6000sw_port_vlan_assign(sc, port, 0, vg->es_untagged_ports);
 vg->es_vid = port | ETHERSWITCH_VID_VALID;

 return (0);
}
