
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {int vte_dev; } ;
typedef int device_t ;


 int CSR_READ_2 (struct vte_softc*,int ) ;
 int CSR_WRITE_2 (struct vte_softc*,int ,int) ;
 int DELAY (int) ;
 int MMDIO_PHY_ADDR_SHIFT ;
 int MMDIO_REG_ADDR_SHIFT ;
 int MMDIO_WRITE ;
 int VTE_MMDIO ;
 int VTE_MMWD ;
 int VTE_PHY_TIMEOUT ;
 struct vte_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
vte_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct vte_softc *sc;
 int i;

 sc = device_get_softc(dev);

 CSR_WRITE_2(sc, VTE_MMWD, val);
 CSR_WRITE_2(sc, VTE_MMDIO, MMDIO_WRITE |
     (phy << MMDIO_PHY_ADDR_SHIFT) | (reg << MMDIO_REG_ADDR_SHIFT));
 for (i = VTE_PHY_TIMEOUT; i > 0; i--) {
  DELAY(5);
  if ((CSR_READ_2(sc, VTE_MMDIO) & MMDIO_WRITE) == 0)
   break;
 }

 if (i == 0)
  device_printf(sc->vte_dev, "phy write timeout : %d\n", reg);

 return (0);
}
