
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_info {scalar_t__ vendor; scalar_t__ devid; scalar_t__ hasmic; int dev; int flags; } ;


 int DELAY (int) ;
 int ENXIO ;
 int ICH_GLOB_CTL_COLD ;
 int ICH_GLOB_CTL_PRES ;
 int ICH_GLOB_STA_PCR ;
 int ICH_IGNORE_PCR ;
 int ICH_REG_GLOB_CNT ;
 int ICH_REG_GLOB_STA ;
 scalar_t__ INTEL_6300ESB ;
 scalar_t__ INTEL_82801DB ;
 scalar_t__ INTEL_82801EB ;
 scalar_t__ INTEL_82801FB ;
 scalar_t__ INTEL_82801GB ;
 scalar_t__ INTEL_VENDORID ;
 int device_printf (int ,char*) ;
 int ich_rd (struct sc_info*,int ,int) ;
 scalar_t__ ich_resetchan (struct sc_info*,int) ;
 int ich_wr (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
ich_init(struct sc_info *sc)
{
 uint32_t stat;

 ich_wr(sc, ICH_REG_GLOB_CNT, ICH_GLOB_CTL_COLD, 4);
 DELAY(600000);
 stat = ich_rd(sc, ICH_REG_GLOB_STA, 4);

 if ((stat & ICH_GLOB_STA_PCR) == 0) {

  if (sc->vendor == INTEL_VENDORID && (
      sc->devid == INTEL_82801DB || sc->devid == INTEL_82801EB ||
      sc->devid == INTEL_6300ESB || sc->devid == INTEL_82801FB ||
      sc->devid == INTEL_82801GB)) {
   sc->flags |= ICH_IGNORE_PCR;
   device_printf(sc->dev, "primary codec not ready!\n");
  }
 }




 ich_wr(sc, ICH_REG_GLOB_CNT, ICH_GLOB_CTL_COLD, 4);


 if (ich_resetchan(sc, 0) || ich_resetchan(sc, 1))
  return (ENXIO);
 if (sc->hasmic && ich_resetchan(sc, 2))
  return (ENXIO);

 return (0);
}
