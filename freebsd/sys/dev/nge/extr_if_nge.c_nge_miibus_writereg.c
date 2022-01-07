
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int nge_flags; int nge_dev; } ;
typedef int device_t ;


 int CSR_WRITE_4 (struct nge_softc*,int,int) ;
 int NGE_FLAG_TBI ;
 int NGE_TBI_ANAR ;
 int NGE_TBI_ANER ;
 int NGE_TBI_ANLPAR ;
 int NGE_TBI_BMCR ;
 int NGE_TBI_ESR ;
 struct nge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int mii_bitbang_writereg (int ,int *,int,int,int) ;
 int nge_mii_bitbang_ops ;

__attribute__((used)) static int
nge_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct nge_softc *sc;

 sc = device_get_softc(dev);
 if ((sc->nge_flags & NGE_FLAG_TBI) != 0) {

  if (phy != 0)
   return (0);
  switch (reg) {
  case 132:
   reg = NGE_TBI_BMCR;
   break;
  case 131:
   return (0);
  case 135:
   reg = NGE_TBI_ANAR;
   break;
  case 133:
   reg = NGE_TBI_ANLPAR;
   break;
  case 134:
   reg = NGE_TBI_ANER;
   break;
  case 130:
   reg = NGE_TBI_ESR;
   break;
  case 129:
  case 128:
   return (0);
  default:
   device_printf(sc->nge_dev,
       "bad phy register write : %d\n", reg);
   return (0);
  }
  CSR_WRITE_4(sc, reg, data);
  return (0);
 }

 mii_bitbang_writereg(dev, &nge_mii_bitbang_ops, phy, reg, data);

 return (0);
}
