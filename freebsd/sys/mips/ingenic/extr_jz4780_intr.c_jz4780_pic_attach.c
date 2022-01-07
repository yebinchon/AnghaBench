
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_pic_softc {int * pic_res; int pic_intrhand; int pic_irqs; int nirqs; int pic_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_CLK ;
 int JZ_ICMR0 ;
 int JZ_ICMR1 ;
 int WRITE4 (struct jz4780_pic_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int ,int *,struct jz4780_pic_softc*,int *) ;
 struct jz4780_pic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int intr_pic_deregister (int ,intptr_t) ;
 int * intr_pic_register (int ,intptr_t) ;
 int jz4780_pic_intr ;
 scalar_t__ jz4780_pic_register_isrcs (struct jz4780_pic_softc*) ;
 int jz4780_pic_spec ;
 int nitems (int ) ;
 intptr_t pic_xref (int ) ;

__attribute__((used)) static int
jz4780_pic_attach(device_t dev)
{
 struct jz4780_pic_softc *sc;
 intptr_t xref;

 xref = pic_xref(dev);

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, jz4780_pic_spec, sc->pic_res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->pic_dev = dev;


 sc->nirqs = nitems(sc->pic_irqs);


 WRITE4(sc, JZ_ICMR0, 0xFFFFFFFF);
 WRITE4(sc, JZ_ICMR1, 0xFFFFFFFF);


 if (jz4780_pic_register_isrcs(sc) != 0) {
  device_printf(dev, "could not register PIC ISRCs\n");
  goto cleanup;
 }





 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  goto cleanup;
 }

 if (bus_setup_intr(dev, sc->pic_res[1], INTR_TYPE_CLK,
     jz4780_pic_intr, ((void*)0), sc, &sc->pic_intrhand)) {
  device_printf(dev, "could not setup irq handler\n");
  intr_pic_deregister(dev, xref);
  goto cleanup;
 }

 return (0);

cleanup:
 bus_release_resources(dev, jz4780_pic_spec, sc->pic_res);

 return(ENXIO);
}
