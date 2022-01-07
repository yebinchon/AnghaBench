
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int sc_dev; } ;


 int AR8327_REG_VTU_FUNC0 ;
 int AR8327_REG_VTU_FUNC1 ;
 int AR8327_VTU_FUNC1_BUSY ;
 int AR8327_VTU_FUNC1_OP ;
 int AR8327_VTU_FUNC1_OP_LOAD ;
 int AR8327_VTU_FUNC1_VID_S ;
 int EBUSY ;
 scalar_t__ arswitch_waitreg (int ,int ,int,int ,int) ;
 int arswitch_writereg (int ,int ,int) ;

__attribute__((used)) static int
ar8327_vlan_op(struct arswitch_softc *sc, uint32_t op, uint32_t vid,
    uint32_t data)
{
 int err;




 if (arswitch_waitreg(sc->sc_dev, AR8327_REG_VTU_FUNC1,
     AR8327_VTU_FUNC1_BUSY, 0, 5))
  return (EBUSY);





 if ((op & AR8327_VTU_FUNC1_OP) == AR8327_VTU_FUNC1_OP_LOAD) {
  err = arswitch_writereg(sc->sc_dev, AR8327_REG_VTU_FUNC0, data);
  if (err)
   return (err);
 }




 op |= ((vid & 0xfff) << AR8327_VTU_FUNC1_VID_S);




 op |= AR8327_VTU_FUNC1_BUSY;
 arswitch_writereg(sc->sc_dev, AR8327_REG_VTU_FUNC1, op);




 if (arswitch_waitreg(sc->sc_dev, AR8327_REG_VTU_FUNC1,
     AR8327_VTU_FUNC1_BUSY, 0, 5))
  return (EBUSY);

 return (0);
}
