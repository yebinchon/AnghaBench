
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct vt_device {struct ofwfb_softc* vd_softc; } ;
struct TYPE_2__ {int fb_cmsize; int fb_flags; int fb_bpp; int* fb_cmap; scalar_t__ fb_vbase; } ;
struct ofwfb_softc {int iso_palette; TYPE_1__ fb; int sc_memt; int sc_handle; } ;
typedef int cell_t ;


 int COLOR_FORMAT_RGB ;
 int FB_FLAG_NOWRITE ;
 int OF_call_method (char*,int ,int,int,int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,scalar_t__,int ) ;
 int bus_space_write_4 (int ,scalar_t__,int ,int) ;
 int panic (char*,int) ;
 int vt_generate_cons_palette (int*,int ,int,int,int,int,int,int) ;

__attribute__((used)) static void
ofwfb_initialize(struct vt_device *vd)
{
 struct ofwfb_softc *sc = vd->vd_softc;
 int i, err;
 cell_t retval;
 uint32_t oldpix;

 sc->fb.fb_cmsize = 16;

 if (sc->fb.fb_flags & FB_FLAG_NOWRITE)
  return;





 sc->iso_palette = 0;
 switch (sc->fb.fb_bpp) {
 case 8:
  vt_generate_cons_palette(sc->fb.fb_cmap, COLOR_FORMAT_RGB, 255,
      16, 255, 8, 255, 0);

  for (i = 0; i < 16; i++) {
   err = OF_call_method("color!", sc->sc_handle, 4, 1,
       (cell_t)((sc->fb.fb_cmap[i] >> 16) & 0xff),
       (cell_t)((sc->fb.fb_cmap[i] >> 8) & 0xff),
       (cell_t)((sc->fb.fb_cmap[i] >> 0) & 0xff),
       (cell_t)i, &retval);
   if (err)
    break;
  }
  if (i != 16)
   sc->iso_palette = 1;

  break;

 case 32:







  oldpix = bus_space_read_4(sc->sc_memt, sc->fb.fb_vbase, 0);
  bus_space_write_4(sc->sc_memt, sc->fb.fb_vbase, 0, 0xff000000);
  if (*(uint8_t *)(sc->fb.fb_vbase) == 0xff)
   vt_generate_cons_palette(sc->fb.fb_cmap,
       COLOR_FORMAT_RGB, 255, 0, 255, 8, 255, 16);
  else
   vt_generate_cons_palette(sc->fb.fb_cmap,
       COLOR_FORMAT_RGB, 255, 16, 255, 8, 255, 0);
  bus_space_write_4(sc->sc_memt, sc->fb.fb_vbase, 0, oldpix);
  break;

 default:
  panic("Unknown color space depth %d", sc->fb.fb_bpp);
  break;
        }
}
