
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_pic_softc {int pic_irqs; int nirqs; int pic_dev; } ;
typedef int device_t ;


 int ENXIO ;
 struct mips_pic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ intr_pic_claim_root (int ,intptr_t,int ,struct mips_pic_softc*,int ) ;
 int intr_pic_deregister (int ,intptr_t) ;
 int * intr_pic_register (int ,intptr_t) ;
 int mips_pic_intr ;
 scalar_t__ mips_pic_register_isrcs (struct mips_pic_softc*) ;
 int nitems (int ) ;
 struct mips_pic_softc* pic_sc ;
 intptr_t pic_xref (int ) ;

__attribute__((used)) static int
mips_pic_attach(device_t dev)
{
 struct mips_pic_softc *sc;
 intptr_t xref = pic_xref(dev);

 if (pic_sc)
  return (ENXIO);

 sc = device_get_softc(dev);

 sc->pic_dev = dev;
 pic_sc = sc;


 sc->nirqs = nitems(sc->pic_irqs);


 if (mips_pic_register_isrcs(sc) != 0) {
  device_printf(dev, "could not register PIC ISRCs\n");
  goto cleanup;
 }





 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  goto cleanup;
 }


 if (intr_pic_claim_root(dev, xref, mips_pic_intr, sc, 0) != 0) {
  device_printf(dev, "could not set PIC as a root\n");
  intr_pic_deregister(dev, xref);
  goto cleanup;
 }

 return (0);

cleanup:
 return(ENXIO);
}
