
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int uintmax_t ;
struct agp_softc {int as_lock; } ;
struct agp_memory {int am_size; int am_is_bound; int am_offset; int am_obj; } ;
typedef int device_t ;


 int AGP_BIND_PAGE (int ,int,int) ;
 int AGP_DPF (char*,int,...) ;
 int AGP_FLUSH_TLB (int ) ;
 int AGP_GET_APERTURE (int ) ;
 int AGP_PAGE_SIZE ;
 int AGP_UNBIND_PAGE (int ,int) ;
 int EINVAL ;
 int OFF_TO_IDX (int) ;
 int PAGE_SIZE ;
 int PQ_INACTIVE ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 struct agp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vm_page_grab (int ,int ,int) ;
 int vm_page_lookup (int ,int ) ;
 int vm_page_unwire (int ,int ) ;
 int vm_page_xunbusy (int ) ;

int
agp_generic_bind_memory(device_t dev, struct agp_memory *mem,
   vm_offset_t offset)
{
 struct agp_softc *sc = device_get_softc(dev);
 vm_offset_t i, j, k;
 vm_page_t m;
 int error;


 if ((offset & (AGP_PAGE_SIZE - 1)) != 0 ||
     offset + mem->am_size > AGP_GET_APERTURE(dev)) {
  device_printf(dev, "binding memory at bad offset %#x\n",
      (int)offset);
  return EINVAL;
 }






 VM_OBJECT_WLOCK(mem->am_obj);
 for (i = 0; i < mem->am_size; i += PAGE_SIZE) {







  m = vm_page_grab(mem->am_obj, OFF_TO_IDX(i),
      VM_ALLOC_WIRED | VM_ALLOC_ZERO);
  AGP_DPF("found page pa=%#jx\n", (uintmax_t)VM_PAGE_TO_PHYS(m));
 }
 VM_OBJECT_WUNLOCK(mem->am_obj);

 mtx_lock(&sc->as_lock);

 if (mem->am_is_bound) {
  device_printf(dev, "memory already bound\n");
  error = EINVAL;
  VM_OBJECT_WLOCK(mem->am_obj);
  i = 0;
  goto bad;
 }





 VM_OBJECT_WLOCK(mem->am_obj);
 for (i = 0; i < mem->am_size; i += PAGE_SIZE) {
  m = vm_page_lookup(mem->am_obj, OFF_TO_IDX(i));







  for (j = 0; j < PAGE_SIZE && i + j < mem->am_size;
       j += AGP_PAGE_SIZE) {
   vm_offset_t pa = VM_PAGE_TO_PHYS(m) + j;
   AGP_DPF("binding offset %#jx to pa %#jx\n",
    (uintmax_t)offset + i + j, (uintmax_t)pa);
   error = AGP_BIND_PAGE(dev, offset + i + j, pa);
   if (error) {




    for (k = 0; k < i + j; k += AGP_PAGE_SIZE)
     AGP_UNBIND_PAGE(dev, offset + k);
    goto bad;
   }
  }
  vm_page_xunbusy(m);
 }
 VM_OBJECT_WUNLOCK(mem->am_obj);




 AGP_FLUSH_TLB(dev);

 mem->am_offset = offset;
 mem->am_is_bound = 1;

 mtx_unlock(&sc->as_lock);

 return 0;
bad:
 mtx_unlock(&sc->as_lock);
 VM_OBJECT_ASSERT_WLOCKED(mem->am_obj);
 for (k = 0; k < mem->am_size; k += PAGE_SIZE) {
  m = vm_page_lookup(mem->am_obj, OFF_TO_IDX(k));
  if (k >= i)
   vm_page_xunbusy(m);
  vm_page_unwire(m, PQ_INACTIVE);
 }
 VM_OBJECT_WUNLOCK(mem->am_obj);

 return error;
}
