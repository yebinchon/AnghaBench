
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffec_softc {int dummy; } ;
typedef int device_t ;


 int FEC_IER_MII ;
 int FEC_IER_REG ;
 int FEC_MMFR_DATA_MASK ;
 int FEC_MMFR_OP_WRITE ;
 int FEC_MMFR_PA_MASK ;
 int FEC_MMFR_PA_SHIFT ;
 int FEC_MMFR_RA_MASK ;
 int FEC_MMFR_RA_SHIFT ;
 int FEC_MMFR_REG ;
 int FEC_MMFR_ST_VALUE ;
 int FEC_MMFR_TA_VALUE ;
 int WR4 (struct ffec_softc*,int ,int) ;
 struct ffec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ffec_miibus_iowait (struct ffec_softc*) ;

__attribute__((used)) static int
ffec_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct ffec_softc *sc;

 sc = device_get_softc(dev);

 WR4(sc, FEC_IER_REG, FEC_IER_MII);

 WR4(sc, FEC_MMFR_REG, FEC_MMFR_OP_WRITE |
     FEC_MMFR_ST_VALUE | FEC_MMFR_TA_VALUE |
     ((phy << FEC_MMFR_PA_SHIFT) & FEC_MMFR_PA_MASK) |
     ((reg << FEC_MMFR_RA_SHIFT) & FEC_MMFR_RA_MASK) |
     (val & FEC_MMFR_DATA_MASK));

 if (!ffec_miibus_iowait(sc)) {
  device_printf(dev, "timeout waiting for mii write\n");
  return (-1);
 }

 return (0);
}
