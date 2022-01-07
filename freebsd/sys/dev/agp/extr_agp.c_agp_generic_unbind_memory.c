
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct agp_softc {int as_lock; } ;
struct agp_memory {int am_size; scalar_t__ am_is_bound; scalar_t__ am_offset; int am_obj; } ;
typedef int device_t ;


 int AGP_FLUSH_TLB (int ) ;
 scalar_t__ AGP_PAGE_SIZE ;
 int AGP_UNBIND_PAGE (int ,scalar_t__) ;
 int EINVAL ;
 scalar_t__ PAGE_SIZE ;
 int PQ_INACTIVE ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int atop (int) ;
 struct agp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vm_page_lookup (int ,int ) ;
 int vm_page_unwire (int ,int ) ;

int
agp_generic_unbind_memory(device_t dev, struct agp_memory *mem)
{
 struct agp_softc *sc = device_get_softc(dev);
 vm_page_t m;
 int i;

 mtx_lock(&sc->as_lock);

 if (!mem->am_is_bound) {
  device_printf(dev, "memory is not bound\n");
  mtx_unlock(&sc->as_lock);
  return EINVAL;
 }






 for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE)
  AGP_UNBIND_PAGE(dev, mem->am_offset + i);

 AGP_FLUSH_TLB(dev);

 VM_OBJECT_WLOCK(mem->am_obj);
 for (i = 0; i < mem->am_size; i += PAGE_SIZE) {
  m = vm_page_lookup(mem->am_obj, atop(i));
  vm_page_unwire(m, PQ_INACTIVE);
 }
 VM_OBJECT_WUNLOCK(mem->am_obj);

 mem->am_offset = 0;
 mem->am_is_bound = 0;

 mtx_unlock(&sc->as_lock);

 return 0;
}
