
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
struct vtballoon_softc {int vtballoon_current_npages; } ;


 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int * vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static vm_page_t
vtballoon_alloc_page(struct vtballoon_softc *sc)
{
 vm_page_t m;

 m = vm_page_alloc(((void*)0), 0, VM_ALLOC_NORMAL | VM_ALLOC_NOOBJ);
 if (m != ((void*)0))
  sc->vtballoon_current_npages++;

 return (m);
}
