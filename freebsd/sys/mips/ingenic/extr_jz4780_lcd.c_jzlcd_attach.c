
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_frame_descriptor {int dummy; } ;
struct jzlcd_softc {int * res; int * clk; int * clk_pix; int fdesc_tag; int fdesc_map; int fdesc; int hdmi_evh; int fdesc_paddr; int dev; } ;
typedef int device_t ;


 int BUS_DMA_NOCACHE ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct jzlcd_softc*,int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ clk_enable (int *) ;
 scalar_t__ clk_get_by_ofw_name (int ,int ,char*,int **) ;
 int clk_release (int *) ;
 struct jzlcd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hdmi_event ;
 int jzlcd_dmamap_cb ;
 int jzlcd_hdmi_event ;
 int jzlcd_spec ;

__attribute__((used)) static int
jzlcd_attach(device_t dev)
{
 struct jzlcd_softc *sc;
 int error;

 sc = device_get_softc(dev);

 sc->dev = dev;

 if (bus_alloc_resources(dev, jzlcd_spec, sc->res)) {
  device_printf(dev, "cannot allocate resources for device\n");
  goto failed;
 }

 if (clk_get_by_ofw_name(dev, 0, "lcd_clk", &sc->clk) != 0 ||
     clk_get_by_ofw_name(dev, 0, "lcd_pixclk", &sc->clk_pix) != 0) {
  device_printf(dev, "cannot get clocks\n");
  goto failed;
 }
 if (clk_enable(sc->clk) != 0 || clk_enable(sc->clk_pix) != 0) {
  device_printf(dev, "cannot enable clocks\n");
  goto failed;
 }

 error = bus_dma_tag_create(
     bus_get_dma_tag(dev),
     sizeof(struct lcd_frame_descriptor), 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sizeof(struct lcd_frame_descriptor) * 2, 1,
     sizeof(struct lcd_frame_descriptor) * 2,
     0,
     ((void*)0), ((void*)0),
     &sc->fdesc_tag);
 if (error != 0) {
  device_printf(dev, "cannot create bus dma tag\n");
  goto failed;
 }

 error = bus_dmamem_alloc(sc->fdesc_tag, (void **)&sc->fdesc,
     BUS_DMA_NOCACHE | BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->fdesc_map);
 if (error != 0) {
  device_printf(dev, "cannot allocate dma descriptor\n");
  goto dmaalloc_failed;
 }

 error = bus_dmamap_load(sc->fdesc_tag, sc->fdesc_map, sc->fdesc,
     sizeof(struct lcd_frame_descriptor) * 2, jzlcd_dmamap_cb,
     &sc->fdesc_paddr, 0);
 if (error != 0) {
  device_printf(dev, "cannot load dma map\n");
  goto dmaload_failed;
 }

 sc->hdmi_evh = EVENTHANDLER_REGISTER(hdmi_event,
     jzlcd_hdmi_event, sc, 0);

 return (0);

dmaload_failed:
 bus_dmamem_free(sc->fdesc_tag, sc->fdesc, sc->fdesc_map);
dmaalloc_failed:
 bus_dma_tag_destroy(sc->fdesc_tag);
failed:
 if (sc->clk_pix != ((void*)0))
  clk_release(sc->clk);
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 if (sc->res != ((void*)0))
  bus_release_resources(dev, jzlcd_spec, sc->res);

 return (ENXIO);
}
