
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t term_color_t ;
struct vt_device {struct creatorfb_softc* vd_softc; } ;
struct TYPE_2__ {int fb_height; int fb_stride; int fb_width; int * fb_cmap; } ;
struct creatorfb_softc {TYPE_1__ fb; int memh; int memt; } ;


 int bus_space_set_region_4 (int ,int ,int,int ,int ) ;

__attribute__((used)) static void
creatorfb_blank(struct vt_device *vd, term_color_t color)
{
 struct creatorfb_softc *sc;
 uint32_t c;
 int i;

 sc = vd->vd_softc;
 c = sc->fb.fb_cmap[color];

 for (i = 0; i < sc->fb.fb_height; i++)
  bus_space_set_region_4(sc->memt, sc->memh, i*sc->fb.fb_stride,
      c, sc->fb.fb_width);
}
