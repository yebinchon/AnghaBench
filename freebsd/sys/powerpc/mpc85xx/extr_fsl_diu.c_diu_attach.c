
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videomode {int hdisplay; int vdisplay; int hsync_start; int htotal; int hsync_end; int vsync_start; int vtotal; int vsync_end; int dot_clock; } ;
struct edid_info {struct videomode* edid_preferred_mode; } ;
struct TYPE_4__ {int fb_width; int fb_height; int fb_stride; int fb_bpp; int fb_depth; int fb_size; intptr_t fb_vbase; intptr_t fb_pbase; int fb_name; int fb_memattr; int fb_flags; } ;
struct TYPE_3__ {int panel_width; int panel_height; int panel_hbp; int panel_hfp; int panel_hpw; int panel_vbp; int panel_vfp; int panel_vpw; int panel_freq; } ;
struct diu_softc {int* sc_gamma; int * sc_fbd; TYPE_2__ sc_info; void* sc_cursor; TYPE_1__ sc_panel; int ih; int * res; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int FB_FLAG_MEMATTR ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int M_DEVBUF ;
 int M_ZERO ;
 scalar_t__ OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (void*) ;
 int PAGE_SIZE ;
 int VM_MEMATTR_DEFAULT ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct diu_softc*,int *) ;
 void* contigmalloc (int,int ,int ,int ,int ,int ,int ) ;
 int * device_add_child (int ,char*,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct diu_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int *) ;
 int diu_init (struct diu_softc*) ;
 int diu_intr ;
 int diu_spec ;
 scalar_t__ edid_parse (void*,struct edid_info*) ;
 int ofw_bus_get_node (int ) ;
 struct videomode* pick_mode_by_ref (int,int,int) ;
 scalar_t__ resource_string_value (int ,int ,char*,char const**) ;
 int sscanf (char const*,char*,int*,int*,int*) ;
 scalar_t__ vtophys (intptr_t) ;

__attribute__((used)) static int
diu_attach(device_t dev)
{
 struct edid_info edid;
 struct diu_softc *sc;
 const struct videomode *videomode;
 void *edid_cells;
 const char *vm_name;
 phandle_t node;
 int h, r, w;
 int err, i;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 if (bus_alloc_resources(dev, diu_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);

 err = bus_setup_intr(dev, sc->res[1], INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), diu_intr, sc, &sc->ih);
 if (err) {
  device_printf(dev, "Unable to alloc interrupt resource.\n");
  return (ENXIO);
 }


 if (OF_getprop_alloc(node, "edid", &edid_cells) <= 0) {

  if (resource_string_value(device_get_name(dev),
      device_get_unit(dev), "mode", &vm_name) != 0) {
   device_printf(dev,
       "No EDID data and no video-mode env set\n");
   return (ENXIO);
  }
 }
 if (edid_cells != ((void*)0)) {
  if (edid_parse(edid_cells, &edid) != 0) {
   device_printf(dev, "Error parsing EDID\n");
   OF_prop_free(edid_cells);
   return (ENXIO);
  }
  videomode = edid.edid_preferred_mode;
 } else {

  if ((err = sscanf(vm_name, "%dx%d@%d", &w, &h, &r)) != 3) {
   device_printf(dev,
       "Cannot parse video mode: %s\n", vm_name);
   return (ENXIO);
  }
  videomode = pick_mode_by_ref(w, h, r);
  if (videomode == ((void*)0)) {
   device_printf(dev,
       "Cannot find mode for %dx%d@%d", w, h, r);
   return (ENXIO);
  }
 }

 sc->sc_panel.panel_width = videomode->hdisplay;
 sc->sc_panel.panel_height = videomode->vdisplay;
 sc->sc_panel.panel_hbp = videomode->hsync_start - videomode->hdisplay;
 sc->sc_panel.panel_hfp = videomode->htotal - videomode->hsync_end;
 sc->sc_panel.panel_hpw = videomode->hsync_end - videomode->hsync_start;
 sc->sc_panel.panel_vbp = videomode->vsync_start - videomode->vdisplay;
 sc->sc_panel.panel_vfp = videomode->vtotal - videomode->vsync_end;
 sc->sc_panel.panel_vpw = videomode->vsync_end - videomode->vsync_start;
 sc->sc_panel.panel_freq = videomode->dot_clock;

 sc->sc_info.fb_width = sc->sc_panel.panel_width;
 sc->sc_info.fb_height = sc->sc_panel.panel_height;
 sc->sc_info.fb_stride = sc->sc_info.fb_width * 4;
 sc->sc_info.fb_bpp = sc->sc_info.fb_depth = 32;
 sc->sc_info.fb_size = sc->sc_info.fb_height * sc->sc_info.fb_stride;
 sc->sc_info.fb_vbase = (intptr_t)contigmalloc(sc->sc_info.fb_size,
     M_DEVBUF, M_ZERO, 0, BUS_SPACE_MAXADDR_32BIT, PAGE_SIZE, 0);
 sc->sc_info.fb_pbase = (intptr_t)vtophys(sc->sc_info.fb_vbase);
 sc->sc_info.fb_flags = FB_FLAG_MEMATTR;
 sc->sc_info.fb_memattr = VM_MEMATTR_DEFAULT;


 sc->sc_gamma = contigmalloc(3 * 256, M_DEVBUF, 0, 0,
     BUS_SPACE_MAXADDR_32BIT, PAGE_SIZE, 0);

 for (i = 0; i < 3 * 256; i++)
  sc->sc_gamma[i] = (i % 256);


 sc->sc_cursor = contigmalloc(32 * 32 * 2, M_DEVBUF, M_ZERO, 0,
     BUS_SPACE_MAXADDR_32BIT, PAGE_SIZE, 0);

 diu_init(sc);

 sc->sc_info.fb_name = device_get_nameunit(dev);


 sc->sc_fbd = device_add_child(dev, "fbd", device_get_unit(dev));
 if (sc->sc_fbd == ((void*)0))
  device_printf(dev, "Can't attach fbd device\n");

 if ((err = device_probe_and_attach(sc->sc_fbd)) != 0) {
  device_printf(dev, "Failed to attach fbd device: %d\n", err);
 }

 return (0);
}
