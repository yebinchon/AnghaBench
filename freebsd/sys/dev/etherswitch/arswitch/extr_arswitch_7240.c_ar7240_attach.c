
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int es_vlan_caps; int es_nvlangroups; } ;
struct TYPE_3__ {int arswitch_hw_global_setup; int arswitch_hw_setup; } ;
struct arswitch_softc {TYPE_2__ info; TYPE_1__ hal; } ;


 int AR8X16_MAX_VLANS ;
 int ETHERSWITCH_VLAN_DOT1Q ;
 int ETHERSWITCH_VLAN_DOUBLE_TAG ;
 int ETHERSWITCH_VLAN_PORT ;
 int ar7240_hw_global_setup ;
 int ar7240_hw_setup ;

void
ar7240_attach(struct arswitch_softc *sc)
{

 sc->hal.arswitch_hw_setup = ar7240_hw_setup;
 sc->hal.arswitch_hw_global_setup = ar7240_hw_global_setup;


 sc->info.es_vlan_caps = ETHERSWITCH_VLAN_DOT1Q |
     ETHERSWITCH_VLAN_PORT | ETHERSWITCH_VLAN_DOUBLE_TAG;
 sc->info.es_nvlangroups = AR8X16_MAX_VLANS;
}
