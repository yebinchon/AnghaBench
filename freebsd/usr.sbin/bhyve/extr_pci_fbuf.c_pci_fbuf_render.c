
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ width; scalar_t__ height; } ;
struct pci_fbuf_softc {scalar_t__ gc_width; scalar_t__ gc_height; TYPE_1__ memregs; int vgasc; TYPE_2__* gc_image; scalar_t__ vga_full; } ;
struct bhyvegc {int dummy; } ;
struct TYPE_4__ {scalar_t__ vgamode; } ;


 int bhyvegc_resize (struct bhyvegc*,scalar_t__,scalar_t__) ;
 int vga_render (struct bhyvegc*,int ) ;

void
pci_fbuf_render(struct bhyvegc *gc, void *arg)
{
 struct pci_fbuf_softc *sc;

 sc = arg;

 if (sc->vga_full && sc->gc_image->vgamode) {



  vga_render(gc, sc->vgasc);
  return;
 }
 if (sc->gc_width != sc->memregs.width ||
     sc->gc_height != sc->memregs.height) {
  bhyvegc_resize(gc, sc->memregs.width, sc->memregs.height);
  sc->gc_width = sc->memregs.width;
  sc->gc_height = sc->memregs.height;
 }

 return;
}
