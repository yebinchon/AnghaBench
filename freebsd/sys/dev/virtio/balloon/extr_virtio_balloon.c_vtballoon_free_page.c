
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct vtballoon_softc {int vtballoon_current_npages; } ;


 int vm_page_free (int ) ;

__attribute__((used)) static void
vtballoon_free_page(struct vtballoon_softc *sc, vm_page_t m)
{

 vm_page_free(m);
 sc->vtballoon_current_npages--;
}
