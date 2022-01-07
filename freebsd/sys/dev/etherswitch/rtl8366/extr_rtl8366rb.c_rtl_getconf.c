
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vlan_mode; int cmd; } ;
typedef TYPE_1__ etherswitch_conf_t ;
typedef int device_t ;


 int ETHERSWITCH_CONF_VLAN_MODE ;
 int ETHERSWITCH_VLAN_DOT1Q ;

__attribute__((used)) static int
rtl_getconf(device_t dev, etherswitch_conf_t *conf)
{


 conf->cmd = ETHERSWITCH_CONF_VLAN_MODE;
 conf->vlan_mode = ETHERSWITCH_VLAN_DOT1Q;

 return (0);
}
