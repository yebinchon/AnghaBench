
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e6000sw_softc {int num_ports; scalar_t__ vlan_mode; int* vlans; int ports_mask; } ;


 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 int PORT_CONTROL ;
 int PORT_CONTROL2 ;
 int PORT_CONTROL2_DOT1Q ;
 int PORT_CONTROL_EGRESS ;
 int PORT_CONTROL_ENABLE ;
 int PORT_CONTROL_FRAME ;
 int PORT_VID ;
 int PORT_VID_DEF_VID_MASK ;
 int PORT_VID_PRIORITY_MASK ;
 int REG_PORT (struct e6000sw_softc*,int) ;
 scalar_t__ e6000sw_is_portenabled (struct e6000sw_softc*,int) ;
 int e6000sw_port_vlan_assign (struct e6000sw_softc*,int,int ,int) ;
 int e6000sw_readreg (struct e6000sw_softc*,int ,int ) ;
 int e6000sw_vtu_flush (struct e6000sw_softc*) ;
 int e6000sw_vtu_update (struct e6000sw_softc*,int ,int,int,int ,int ) ;
 int e6000sw_writereg (struct e6000sw_softc*,int ,int ,int) ;
 int nitems (int*) ;

__attribute__((used)) static int
e6000sw_init_vlan(struct e6000sw_softc *sc)
{
 int i, port, ret;
 uint32_t members;


 for (port = 0; port < sc->num_ports; port++) {
  ret = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_CONTROL);
  e6000sw_writereg(sc, REG_PORT(sc, port), PORT_CONTROL,
      (ret & ~PORT_CONTROL_ENABLE));
 }


 e6000sw_vtu_flush(sc);

 for (port = 0; port < sc->num_ports; port++) {

  ret = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_CONTROL);
  ret &= ~(PORT_CONTROL_EGRESS | PORT_CONTROL_FRAME);
  e6000sw_writereg(sc, REG_PORT(sc, port), PORT_CONTROL, ret);


  ret = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_CONTROL2);
  ret &= ~PORT_CONTROL2_DOT1Q;
  if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q)
   ret |= PORT_CONTROL2_DOT1Q;
  e6000sw_writereg(sc, REG_PORT(sc, port), PORT_CONTROL2, ret);
 }

 for (port = 0; port < sc->num_ports; port++) {
  if (!e6000sw_is_portenabled(sc, port))
   continue;

  ret = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_VID);


  ret &= ~PORT_VID_PRIORITY_MASK;


  ret &= ~PORT_VID_DEF_VID_MASK;
  if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q)
   ret |= 1;
  else
   ret |= (port + 1);
  e6000sw_writereg(sc, REG_PORT(sc, port), PORT_VID, ret);
 }


 for (port = 0; port < sc->num_ports; port++) {
  members = 0;
  if (e6000sw_is_portenabled(sc, port)) {
   for (i = 0; i < sc->num_ports; i++) {
    if (i == port || !e6000sw_is_portenabled(sc, i))
     continue;
    members |= (1 << i);
   }
  }

  e6000sw_port_vlan_assign(sc, port, 0, members);
 }


 for (i = 0; i < nitems(sc->vlans); i++)
  sc->vlans[i] = 0;


 if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
  sc->vlans[0] = 1;
  e6000sw_vtu_update(sc, 0, sc->vlans[0], 1, 0, sc->ports_mask);
 }


 for (port = 0; port < sc->num_ports; port++) {
  if (!e6000sw_is_portenabled(sc, port))
   continue;
  ret = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_CONTROL);
  e6000sw_writereg(sc, REG_PORT(sc, port), PORT_CONTROL,
      (ret | PORT_CONTROL_ENABLE));
 }

 return (0);
}
