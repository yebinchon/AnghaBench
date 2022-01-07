
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ksz8995ma_softc {scalar_t__ vlan_mode; } ;
struct TYPE_3__ {int cmd; scalar_t__ vlan_mode; } ;
typedef TYPE_1__ etherswitch_conf_t ;
typedef int device_t ;


 int ETHERSWITCH_CONF_VLAN_MODE ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 scalar_t__ ETHERSWITCH_VLAN_PORT ;
 int KSZ8995MA_GC3 ;
 int KSZ8995MA_VLAN_ENABLE ;
 struct ksz8995ma_softc* device_get_softc (int ) ;
 int ksz8995ma_portvlanreset (int ) ;
 int ksz8995ma_readreg (int ,int ) ;
 int ksz8995ma_writereg (int ,int ,int) ;

__attribute__((used)) static int
ksz8995ma_setconf(device_t dev, etherswitch_conf_t *conf)
{
 int reg;
 struct ksz8995ma_softc *sc;

 sc = device_get_softc(dev);

 if ((conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) == 0)
  return (0);

 if (conf->vlan_mode == ETHERSWITCH_VLAN_PORT) {
  sc->vlan_mode = ETHERSWITCH_VLAN_PORT;
  reg = ksz8995ma_readreg(dev, KSZ8995MA_GC3);
  ksz8995ma_writereg(dev, KSZ8995MA_GC3,
      reg & ~KSZ8995MA_VLAN_ENABLE);
  ksz8995ma_portvlanreset(dev);
 } else if (conf->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
  sc->vlan_mode = ETHERSWITCH_VLAN_DOT1Q;
  reg = ksz8995ma_readreg(dev, KSZ8995MA_GC3);
  ksz8995ma_writereg(dev, KSZ8995MA_GC3,
      reg | KSZ8995MA_VLAN_ENABLE);
 } else {
  sc->vlan_mode = 0;
  reg = ksz8995ma_readreg(dev, KSZ8995MA_GC3);
  ksz8995ma_writereg(dev, KSZ8995MA_GC3,
      reg & ~KSZ8995MA_VLAN_ENABLE);
  ksz8995ma_portvlanreset(dev);
 }
 return (0);
}
