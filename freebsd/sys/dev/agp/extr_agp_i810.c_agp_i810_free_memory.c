
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
struct agp_memory {int am_type; scalar_t__ am_obj; int am_size; scalar_t__ am_is_bound; } ;
struct TYPE_2__ {int as_memory; int as_allocated; } ;
struct agp_i810_softc {TYPE_1__ agp; int * argb_cursor; } ;
typedef int device_t ;


 int AGP_PAGE_SIZE ;
 int EBUSY ;
 int M_AGP ;
 int PQ_INACTIVE ;
 int TAILQ_REMOVE (int *,struct agp_memory*,int ) ;
 int VM_OBJECT_WLOCK (scalar_t__) ;
 int VM_OBJECT_WUNLOCK (scalar_t__) ;
 int am_link ;
 int contigfree (int *,int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int free (struct agp_memory*,int ) ;
 int vm_object_deallocate (scalar_t__) ;
 int vm_page_lookup (scalar_t__,int ) ;
 int vm_page_unwire (int ,int ) ;

__attribute__((used)) static int
agp_i810_free_memory(device_t dev, struct agp_memory *mem)
{
 struct agp_i810_softc *sc;
 vm_page_t m;

 if (mem->am_is_bound)
  return (EBUSY);

 sc = device_get_softc(dev);

 if (mem->am_type == 2) {
  if (mem->am_size == AGP_PAGE_SIZE) {



   VM_OBJECT_WLOCK(mem->am_obj);
   m = vm_page_lookup(mem->am_obj, 0);
   vm_page_unwire(m, PQ_INACTIVE);
   VM_OBJECT_WUNLOCK(mem->am_obj);
  } else {
   contigfree(sc->argb_cursor, mem->am_size, M_AGP);
   sc->argb_cursor = ((void*)0);
  }
 }

 sc->agp.as_allocated -= mem->am_size;
 TAILQ_REMOVE(&sc->agp.as_memory, mem, am_link);
 if (mem->am_obj)
  vm_object_deallocate(mem->am_obj);
 free(mem, M_AGP);
 return (0);
}
