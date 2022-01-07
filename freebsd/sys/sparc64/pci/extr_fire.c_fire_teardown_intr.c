
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_long ;
typedef int u_int ;
struct resource {int dummy; } ;
struct fire_softc {int* sc_msi_msiq_table; size_t sc_msi_first; scalar_t__ sc_msiq_first; scalar_t__ sc_msiq_ino_first; int sc_ign; } ;
typedef int device_t ;
struct TYPE_2__ {int * iv_ic; } ;


 int FIRE_PCI_READ_8 (struct fire_softc*,scalar_t__) ;
 int FIRE_PCI_WRITE_8 (struct fire_softc*,scalar_t__,int) ;
 scalar_t__ FO_PCI_EQ_CTRL_CLR_BASE ;
 int FO_PCI_EQ_CTRL_CLR_COVERR ;
 int FO_PCI_EQ_CTRL_CLR_DIS ;
 int FO_PCI_EQ_CTRL_CLR_E2I ;
 scalar_t__ FO_PCI_EQ_HD_BASE ;
 int FO_PCI_EQ_HD_MASK ;
 int FO_PCI_EQ_HD_SHFT ;
 scalar_t__ FO_PCI_EQ_TL_BASE ;
 int FO_PCI_EQ_TL_MASK ;
 int FO_PCI_EQ_TL_SHFT ;
 scalar_t__ FO_PCI_MSI_MAP_BASE ;
 int FO_PCI_MSI_MAP_V ;
 size_t INTMAP_VEC (int ,scalar_t__) ;
 int bus_generic_teardown_intr (int ,int ,struct resource*,void*) ;
 struct fire_softc* device_get_softc (int ) ;
 int fire_ic ;
 TYPE_1__* intr_vectors ;
 scalar_t__ rman_get_rid (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_set_end (struct resource*,int) ;
 int rman_set_start (struct resource*,int) ;

__attribute__((used)) static int
fire_teardown_intr(device_t dev, device_t child, struct resource *ires,
    void *cookie)
{
 struct fire_softc *sc;
 u_long vec;
 int error;
 u_int msi, msiq;

 sc = device_get_softc(dev);
 if (rman_get_rid(ires) != 0) {
  msi = rman_get_start(ires);
  msiq = sc->sc_msi_msiq_table[msi - sc->sc_msi_first];
  vec = INTMAP_VEC(sc->sc_ign, msiq + sc->sc_msiq_ino_first);
  msiq += sc->sc_msiq_first;
  msi <<= 3;
  FIRE_PCI_WRITE_8(sc, FO_PCI_MSI_MAP_BASE + msi,
      FIRE_PCI_READ_8(sc, FO_PCI_MSI_MAP_BASE + msi) &
      ~FO_PCI_MSI_MAP_V);
  msiq <<= 3;
  FIRE_PCI_WRITE_8(sc, FO_PCI_EQ_CTRL_CLR_BASE + msiq,
      FO_PCI_EQ_CTRL_CLR_COVERR | FO_PCI_EQ_CTRL_CLR_E2I |
      FO_PCI_EQ_CTRL_CLR_DIS);
  FIRE_PCI_WRITE_8(sc, FO_PCI_EQ_TL_BASE + msiq,
      (0 << FO_PCI_EQ_TL_SHFT) & FO_PCI_EQ_TL_MASK);
  FIRE_PCI_WRITE_8(sc, FO_PCI_EQ_HD_BASE + msiq,
      (0 << FO_PCI_EQ_HD_SHFT) & FO_PCI_EQ_HD_MASK);
  intr_vectors[vec].iv_ic = &fire_ic;



  rman_set_start(ires, vec);
  rman_set_end(ires, vec);
  error = bus_generic_teardown_intr(dev, child, ires, cookie);
  msi >>= 3;
  rman_set_start(ires, msi);
  rman_set_end(ires, msi);
  return (error);
 }
 return (bus_generic_teardown_intr(dev, child, ires, cookie));
}
