
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int sc_dev; } ;


 int AR8327_REG_PORT_LOOKUP (int) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int ETHERSWITCH_VID_MASK ;
 int MA_OWNED ;
 int arswitch_modifyreg (int ,int ,int,int) ;

__attribute__((used)) static int
ar8327_vlan_set_port(struct arswitch_softc *sc, uint32_t ports, int vid)
{
 int err, port;

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);


 port = vid & ETHERSWITCH_VID_MASK;

 err = arswitch_modifyreg(sc->sc_dev, AR8327_REG_PORT_LOOKUP(port),
     0x7f,
     (ports & 0x7f));

 if (err)
  return (err);
 return (0);
}
