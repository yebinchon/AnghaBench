
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_gic_softc {int gic_res; int gic_irqs; int nirqs; int mutex; int gic_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_CLK ;
 int MTK_INTDIS ;
 int MTK_INTPOL ;
 int MTK_INTTRIG ;
 int MTK_MAPPIN (int) ;
 int MTK_MAPVPE (int,int ) ;
 int MTK_PIN_BITS (int ) ;
 int MTK_VPE_BITS (int ) ;
 int MTX_SPIN ;
 int WRITE4 (struct mtk_gic_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int cpu_establish_hardintr (char*,int ,int *,struct mtk_gic_softc*,int ,int ,int *) ;
 struct mtk_gic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 intptr_t gic_xref (int ) ;
 int * intr_pic_register (int ,intptr_t) ;
 int mtk_gic_intr ;
 scalar_t__ mtk_gic_register_isrcs (struct mtk_gic_softc*) ;
 int mtk_gic_spec ;
 int mtx_init (int *,char*,char*,int ) ;
 int nitems (int ) ;

__attribute__((used)) static int
mtk_gic_attach(device_t dev)
{
 struct mtk_gic_softc *sc;
 intptr_t xref = gic_xref(dev);
 int i;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, mtk_gic_spec, sc->gic_res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->gic_dev = dev;


 mtx_init(&sc->mutex, "PIC lock", "", MTX_SPIN);


 sc->nirqs = nitems(sc->gic_irqs);


 WRITE4(sc, MTK_INTDIS, 0xFFFFFFFF);


 WRITE4(sc, MTK_INTTRIG, 0x00000000);


 WRITE4(sc, MTK_INTPOL, 0xFFFFFFFF);




 for (i = 0; i < 32; i++) {
  WRITE4(sc, MTK_MAPPIN(i), MTK_PIN_BITS(0));
  WRITE4(sc, MTK_MAPVPE(i, 0), MTK_VPE_BITS(0));
 }


 if (mtk_gic_register_isrcs(sc) != 0) {
  device_printf(dev, "could not register GIC ISRCs\n");
  goto cleanup;
 }





 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  goto cleanup;
 }

 cpu_establish_hardintr("gic", mtk_gic_intr, ((void*)0), sc, 0, INTR_TYPE_CLK,
     ((void*)0));

 return (0);

cleanup:
 bus_release_resources(dev, mtk_gic_spec, sc->gic_res);
 return(ENXIO);
}
