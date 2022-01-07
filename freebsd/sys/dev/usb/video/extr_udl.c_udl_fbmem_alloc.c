
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct udl_softc {scalar_t__ sc_fb_size; int sc_fb_copy; int sc_fb_addr; } ;


 int M_USB_DL ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PAGE_SIZE ;
 int malloc (scalar_t__,int ,int) ;
 scalar_t__ round_page (scalar_t__) ;
 int udl_buffer_alloc (scalar_t__) ;
 scalar_t__ udl_get_fb_size (struct udl_softc*) ;

__attribute__((used)) static void
udl_fbmem_alloc(struct udl_softc *sc)
{
 uint32_t size;

 size = udl_get_fb_size(sc);
 size = round_page(size);

 if (size == 0)
  size = PAGE_SIZE;




 sc->sc_fb_addr = udl_buffer_alloc(size);
 sc->sc_fb_copy = malloc(size, M_USB_DL, M_WAITOK | M_ZERO);
 sc->sc_fb_size = size;
}
