
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int atc_mode; } ;
struct TYPE_4__ {scalar_t__ gc_misc_gm; } ;
struct vga_softc {TYPE_2__ vga_atc; TYPE_1__ vga_gc; TYPE_3__* gc_image; } ;
struct bhyvegc {int dummy; } ;
struct TYPE_6__ {int width; int height; int data; } ;


 int ATC_MC_GA ;
 int memset (int ,int ,int) ;
 int vga_check_size (struct bhyvegc*,struct vga_softc*) ;
 scalar_t__ vga_in_reset (struct vga_softc*) ;
 int vga_render_graphics (struct vga_softc*) ;
 int vga_render_text (struct vga_softc*) ;

void
vga_render(struct bhyvegc *gc, void *arg)
{
 struct vga_softc *sc = arg;

 vga_check_size(gc, sc);

 if (vga_in_reset(sc)) {
  memset(sc->gc_image->data, 0,
      sc->gc_image->width * sc->gc_image->height *
       sizeof (uint32_t));
  return;
 }

 if (sc->vga_gc.gc_misc_gm && (sc->vga_atc.atc_mode & ATC_MC_GA))
  vga_render_graphics(sc);
 else
  vga_render_text(sc);
}
