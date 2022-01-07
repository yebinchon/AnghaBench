
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_long ;
typedef int u_int ;
struct resource {int dummy; } ;
struct fire_softc {int* sc_msi_msiq_table; size_t sc_msi_first; scalar_t__ sc_ign; scalar_t__ sc_msiq_first; scalar_t__ sc_msiq_ino_first; } ;
struct TYPE_3__ {scalar_t__ fica_clr; } ;
struct fire_msiqarg {int fmqa_msi; TYPE_1__ fmqa_fica; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_4__ {int * iv_ic; int iv_func; struct fire_msiqarg* iv_icarg; } ;


 int EINVAL ;
 int FIRE_PCI_READ_8 (struct fire_softc*,scalar_t__) ;
 int FIRE_PCI_WRITE_8 (struct fire_softc*,scalar_t__,int) ;
 scalar_t__ FO_PCI_EQ_CTRL_SET_BASE ;
 int FO_PCI_EQ_CTRL_SET_EN ;
 scalar_t__ FO_PCI_MSI_CLR_BASE ;
 int FO_PCI_MSI_CLR_EQWR_N ;
 scalar_t__ FO_PCI_MSI_MAP_BASE ;
 int FO_PCI_MSI_MAP_EQNUM_MASK ;
 int FO_PCI_MSI_MAP_EQNUM_SHFT ;
 int FO_PCI_MSI_MAP_V ;
 int INTCLR_IDLE ;
 scalar_t__ INTIGN (size_t) ;
 size_t INTMAP_VEC (scalar_t__,scalar_t__) ;
 int bus_generic_setup_intr (int ,int ,struct resource*,int,int *,int *,void*,void**) ;
 struct fire_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,size_t) ;
 int fire_ic ;
 int fire_msiq_filter ;
 int fire_msiq_handler ;
 int fire_msiqc_filter ;
 TYPE_2__* intr_vectors ;
 scalar_t__ rman_get_rid (struct resource*) ;
 void* rman_get_start (struct resource*) ;
 int rman_set_end (struct resource*,int) ;
 int rman_set_start (struct resource*,int) ;

__attribute__((used)) static int
fire_setup_intr(device_t dev, device_t child, struct resource *ires,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg,
    void **cookiep)
{
 struct fire_softc *sc;
 struct fire_msiqarg *fmqa;
 u_long vec;
 int error;
 u_int msi, msiq;

 sc = device_get_softc(dev);





 if (rman_get_rid(ires) != 0) {
  msi = rman_get_start(ires);
  msiq = sc->sc_msi_msiq_table[msi - sc->sc_msi_first];
  vec = INTMAP_VEC(sc->sc_ign, sc->sc_msiq_ino_first + msiq);
  msiq += sc->sc_msiq_first;
  if (intr_vectors[vec].iv_ic != &fire_ic) {
   device_printf(dev,
       "invalid interrupt controller for vector 0x%lx\n",
       vec);
   return (EINVAL);
  }



  rman_set_start(ires, vec);
  rman_set_end(ires, vec);
  error = bus_generic_setup_intr(dev, child, ires, flags, filt,
      intr, arg, cookiep);
  rman_set_start(ires, msi);
  rman_set_end(ires, msi);
  if (error != 0)
   return (error);
  fmqa = intr_vectors[vec].iv_icarg;



  if (filt != ((void*)0)) {
   intr_vectors[vec].iv_func = fire_msiq_filter;
   intr_vectors[vec].iv_ic = &fire_msiqc_filter;





   FIRE_PCI_WRITE_8(sc, fmqa->fmqa_fica.fica_clr,
       INTCLR_IDLE);
  } else
   intr_vectors[vec].iv_func = fire_msiq_handler;

  fmqa->fmqa_msi = msi;
  FIRE_PCI_WRITE_8(sc, FO_PCI_EQ_CTRL_SET_BASE + (msiq << 3),
      FO_PCI_EQ_CTRL_SET_EN);
  msi <<= 3;
  FIRE_PCI_WRITE_8(sc, FO_PCI_MSI_MAP_BASE + msi,
      (FIRE_PCI_READ_8(sc, FO_PCI_MSI_MAP_BASE + msi) &
      ~FO_PCI_MSI_MAP_EQNUM_MASK) |
      ((msiq << FO_PCI_MSI_MAP_EQNUM_SHFT) &
      FO_PCI_MSI_MAP_EQNUM_MASK));
  FIRE_PCI_WRITE_8(sc, FO_PCI_MSI_CLR_BASE + msi,
      FO_PCI_MSI_CLR_EQWR_N);
  FIRE_PCI_WRITE_8(sc, FO_PCI_MSI_MAP_BASE + msi,
      FIRE_PCI_READ_8(sc, FO_PCI_MSI_MAP_BASE + msi) |
      FO_PCI_MSI_MAP_V);
  return (error);
 }





 vec = rman_get_start(ires);
 if (INTIGN(vec) != sc->sc_ign) {
  device_printf(dev, "invalid interrupt vector 0x%lx\n", vec);
  return (EINVAL);
 }
 if (intr_vectors[vec].iv_ic != &fire_ic) {
  device_printf(dev,
      "invalid interrupt controller for vector 0x%lx\n", vec);
  return (EINVAL);
 }
 return (bus_generic_setup_intr(dev, child, ires, flags, filt, intr,
     arg, cookiep));
}
