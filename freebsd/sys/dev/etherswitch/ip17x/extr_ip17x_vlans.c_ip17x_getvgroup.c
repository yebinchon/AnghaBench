
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ip17x_softc {int phymask; int* phyport; TYPE_1__* vlan; } ;
struct TYPE_5__ {size_t es_vlangroup; int es_member_ports; int es_untagged_ports; scalar_t__ es_fid; int es_vid; } ;
typedef TYPE_2__ etherswitch_vlangroup_t ;
typedef int device_t ;
struct TYPE_4__ {int ports; int vlanid; } ;


 int MII_NPHY ;
 struct ip17x_softc* device_get_softc (int ) ;

int
ip17x_getvgroup(device_t dev, etherswitch_vlangroup_t *vg)
{
 struct ip17x_softc *sc;
 uint32_t port;
 int i;

 sc = device_get_softc(dev);


 vg->es_vid = sc->vlan[vg->es_vlangroup].vlanid;


 vg->es_member_ports = 0;
 for (i = 0; i < MII_NPHY; i++) {
  if ((sc->phymask & (1 << i)) == 0)
   continue;
  if ((sc->vlan[vg->es_vlangroup].ports & (1 << i)) == 0)
   continue;
  port = sc->phyport[i];
  vg->es_member_ports |= (1 << port);
 }


 vg->es_untagged_ports = vg->es_member_ports;
 vg->es_fid = 0;

 return (0);
}
