
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int e6000sw_softc_t ;


 int ENXIO ;
 int PORT_VID ;
 int PORT_VID_DEF_VID_MASK ;
 int REG_PORT (int *,int) ;
 int e6000sw_readreg (int *,int ,int ) ;

__attribute__((used)) static __inline int
e6000sw_get_pvid(e6000sw_softc_t *sc, int port, int *pvid)
{

 if (pvid == ((void*)0))
  return (ENXIO);

 *pvid = e6000sw_readreg(sc, REG_PORT(sc, port), PORT_VID) &
     PORT_VID_DEF_VID_MASK;

 return (0);
}
