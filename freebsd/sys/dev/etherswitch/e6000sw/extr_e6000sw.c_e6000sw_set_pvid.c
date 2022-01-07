
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int e6000sw_softc_t ;


 int PORT_VID ;
 int PORT_VID_DEF_VID_MASK ;
 int REG_PORT (int *,int) ;
 int e6000sw_readreg (int *,int ,int ) ;
 int e6000sw_writereg (int *,int ,int ,int) ;

__attribute__((used)) static __inline void
e6000sw_set_pvid(e6000sw_softc_t *sc, int port, int pvid)
{
 uint32_t reg;

 reg = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_VID);
 reg &= ~PORT_VID_DEF_VID_MASK;
 reg |= (pvid & PORT_VID_DEF_VID_MASK);
 e6000sw_writereg(sc, REG_PORT(sc, port), PORT_VID, reg);
}
