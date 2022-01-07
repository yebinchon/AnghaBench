
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ue_dev; } ;
struct rue_softc {TYPE_1__ sc_ue; int sc_mtx; } ;
typedef int device_t ;
 int RUE_AER ;
 int RUE_ANAR ;
 int RUE_ANLP ;
 int RUE_BMCR ;
 int RUE_BMSR ;
 int RUE_LOCK (struct rue_softc*) ;
 int RUE_REG_MAX ;
 int RUE_REG_MIN ;
 int RUE_UNLOCK (struct rue_softc*) ;
 struct rue_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_owned (int *) ;
 int rue_csr_write_1 (struct rue_softc*,int,int) ;
 int rue_csr_write_2 (struct rue_softc*,int ,int) ;

__attribute__((used)) static int
rue_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct rue_softc *sc = device_get_softc(dev);
 uint16_t ruereg;
 int locked;

 if (phy != 0)
  return (0);

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  RUE_LOCK(sc);

 switch (reg) {
 case 131:
  ruereg = RUE_BMCR;
  break;
 case 130:
  ruereg = RUE_BMSR;
  break;
 case 134:
  ruereg = RUE_ANAR;
  break;
 case 133:
  ruereg = RUE_AER;
  break;
 case 132:
  ruereg = RUE_ANLP;
  break;
 case 129:
 case 128:
  goto done;
 default:
  if (RUE_REG_MIN <= reg && reg <= RUE_REG_MAX) {
   rue_csr_write_1(sc, reg, data);
   goto done;
  }
  device_printf(sc->sc_ue.ue_dev, " bad phy register\n");
  goto done;
 }
 rue_csr_write_2(sc, ruereg, data);
done:
 if (!locked)
  RUE_UNLOCK(sc);
 return (0);
}
