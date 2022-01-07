
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jzlcd_softc {scalar_t__ vaddr; int paddr; int dev; int fbsize; } ;


 int ENOMEM ;
 int FB_ALIGN ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int device_printf (int ,char*) ;
 scalar_t__ kmem_alloc_contig (int ,int,int ,int ,int ,int ,int ) ;
 int pmap_kextract (scalar_t__) ;

__attribute__((used)) static int
jzlcd_allocfb(struct jzlcd_softc *sc)
{
 sc->vaddr = kmem_alloc_contig(sc->fbsize, M_NOWAIT | M_ZERO, 0, ~0,
     FB_ALIGN, 0, VM_MEMATTR_WRITE_COMBINING);
 if (sc->vaddr == 0) {
  device_printf(sc->dev, "failed to allocate FB memory\n");
  return (ENOMEM);
 }
 sc->paddr = pmap_kextract(sc->vaddr);

 return (0);
}
