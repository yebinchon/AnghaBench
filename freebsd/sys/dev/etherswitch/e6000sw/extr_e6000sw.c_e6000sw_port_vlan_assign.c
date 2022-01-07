
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int e6000sw_softc_t ;


 int PORT_CONTROL1 ;
 int PORT_CONTROL1_FID_MASK ;
 int PORT_MASK (int *) ;
 int PORT_VLAN_MAP ;
 int PORT_VLAN_MAP_FID ;
 int PORT_VLAN_MAP_FID_MASK ;
 int REG_PORT (int *,int) ;
 int e6000sw_readreg (int *,int ,int ) ;
 int e6000sw_writereg (int *,int ,int ,int) ;

__attribute__((used)) static __inline void
e6000sw_port_vlan_assign(e6000sw_softc_t *sc, int port, uint32_t fid,
    uint32_t members)
{
 uint32_t reg;

 reg = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_VLAN_MAP);
 reg &= ~(PORT_MASK(sc) | PORT_VLAN_MAP_FID_MASK);
 reg |= members & PORT_MASK(sc) & ~(1 << port);
 reg |= (fid << PORT_VLAN_MAP_FID) & PORT_VLAN_MAP_FID_MASK;
 e6000sw_writereg(sc, REG_PORT(sc, port), PORT_VLAN_MAP, reg);
 reg = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_CONTROL1);
 reg &= ~PORT_CONTROL1_FID_MASK;
 reg |= (fid >> 4) & PORT_CONTROL1_FID_MASK;
 e6000sw_writereg(sc, REG_PORT(sc, port), PORT_CONTROL1, reg);
}
