
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct adm6996fc_softc {scalar_t__ vlan_mode; } ;
struct TYPE_3__ {int cmd; scalar_t__ vlan_mode; } ;
typedef TYPE_1__ etherswitch_conf_t ;
typedef int device_t ;


 int ADM6996FC_READREG (int ,int) ;
 int ADM6996FC_SC3 ;
 int ADM6996FC_TBV_SHIFT ;
 int ADM6996FC_VF0H ;
 int ADM6996FC_VF0L ;
 int ADM6996FC_VV_SHIFT ;
 int ADM6996FC_WRITEREG (int ,int,int) ;
 int ETHERSWITCH_CONF_VLAN_MODE ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 scalar_t__ ETHERSWITCH_VLAN_PORT ;
 int device_get_parent (int ) ;
 struct adm6996fc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
adm6996fc_setconf(device_t dev, etherswitch_conf_t *conf)
{
 struct adm6996fc_softc *sc;
 device_t parent;
 int i;
 int data;
 int bcaddr[6] = {0x01, 0x03, 0x05, 0x07, 0x08, 0x09};

 sc = device_get_softc(dev);
 parent = device_get_parent(dev);

 if ((conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) == 0)
  return (0);

 if (conf->vlan_mode == ETHERSWITCH_VLAN_PORT) {
  sc->vlan_mode = ETHERSWITCH_VLAN_PORT;
  data = ADM6996FC_READREG(parent, ADM6996FC_SC3);
  data &= ~(1 << ADM6996FC_TBV_SHIFT);
  ADM6996FC_WRITEREG(parent, ADM6996FC_SC3, data);
  for (i = 0;i <= 5; ++i) {
   data = ADM6996FC_READREG(parent, bcaddr[i]);
   data &= ~(0xf << 10);
   data |= (i << 10);
   ADM6996FC_WRITEREG(parent, bcaddr[i], data);
   ADM6996FC_WRITEREG(parent, ADM6996FC_VF0L + 2 * i,
       0x003f);
   ADM6996FC_WRITEREG(parent, ADM6996FC_VF0H + 2 * i,
       (1 << ADM6996FC_VV_SHIFT) | 1);
  }
 } else if (conf->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
  sc->vlan_mode = ETHERSWITCH_VLAN_DOT1Q;
  data = ADM6996FC_READREG(parent, ADM6996FC_SC3);
  data |= (1 << ADM6996FC_TBV_SHIFT);
  ADM6996FC_WRITEREG(parent, ADM6996FC_SC3, data);
  for (i = 0;i <= 5; ++i) {
   data = ADM6996FC_READREG(parent, bcaddr[i]);

   data &= ~(0xf << 10);
   data |= (1 << 10);
   ADM6996FC_WRITEREG(parent, bcaddr[i], data);
  }
  for (i = 2;i <= 15; ++i) {
   ADM6996FC_WRITEREG(parent, ADM6996FC_VF0H + 2 * i,
       0x0000);
  }
 } else {





  sc->vlan_mode = 0;
  data = ADM6996FC_READREG(parent, ADM6996FC_SC3);
  data &= ~(1 << ADM6996FC_TBV_SHIFT);
  ADM6996FC_WRITEREG(parent, ADM6996FC_SC3, data);
  for (i = 0;i <= 5; ++i) {
   data = ADM6996FC_READREG(parent, bcaddr[i]);
   data &= ~(0xf << 10);
   data |= (1 << 10);
   if (i == 5)
    data &= ~(1 << 4);
   ADM6996FC_WRITEREG(parent, bcaddr[i], data);
  }

  ADM6996FC_WRITEREG(parent, ADM6996FC_VF0L + 2, 0x003f);
  ADM6996FC_WRITEREG(parent, ADM6996FC_VF0H + 2,
      (1 << ADM6996FC_VV_SHIFT) | 1);
 }


 return (0);
}
