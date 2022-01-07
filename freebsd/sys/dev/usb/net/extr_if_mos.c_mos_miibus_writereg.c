
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mos_softc {int sc_mtx; } ;
typedef int device_t ;


 int MOS_DPRINTFN (char*) ;
 int MOS_LOCK (struct mos_softc*) ;
 int MOS_PHYCTL_PHYADDR ;
 int MOS_PHYCTL_WRITE ;
 int MOS_PHYSTS_PENDING ;
 int MOS_PHYSTS_PHYREG ;
 int MOS_PHYSTS_READY ;
 int MOS_PHY_CTL ;
 int MOS_PHY_DATA ;
 int MOS_PHY_STS ;
 int MOS_TIMEOUT ;
 int MOS_UNLOCK (struct mos_softc*) ;
 struct mos_softc* device_get_softc (int ) ;
 int mos_reg_read_1 (struct mos_softc*,int ) ;
 int mos_reg_write_1 (struct mos_softc*,int ,int) ;
 int mos_reg_write_2 (struct mos_softc*,int ,int) ;
 int mtx_owned (int *) ;

__attribute__((used)) static int
mos_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct mos_softc *sc = device_get_softc(dev);
 int i, locked;

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  MOS_LOCK(sc);

 mos_reg_write_2(sc, MOS_PHY_DATA, val);
 mos_reg_write_1(sc, MOS_PHY_CTL, (phy & MOS_PHYCTL_PHYADDR) |
     MOS_PHYCTL_WRITE);
 mos_reg_write_1(sc, MOS_PHY_STS, (reg & MOS_PHYSTS_PHYREG) |
     MOS_PHYSTS_PENDING);

 for (i = 0; i < MOS_TIMEOUT; i++) {
  if (mos_reg_read_1(sc, MOS_PHY_STS) & MOS_PHYSTS_READY)
   break;
 }
 if (i == MOS_TIMEOUT)
  MOS_DPRINTFN("MII write timeout");

 if (!locked)
  MOS_UNLOCK(sc);
 return 0;
}
