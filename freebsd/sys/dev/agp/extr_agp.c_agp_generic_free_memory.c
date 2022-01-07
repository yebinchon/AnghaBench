
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_softc {int as_memory; int as_allocated; } ;
struct agp_memory {int am_obj; scalar_t__ am_size; scalar_t__ am_is_bound; } ;
typedef int device_t ;


 int EBUSY ;
 int M_AGP ;
 int TAILQ_REMOVE (int *,struct agp_memory*,int ) ;
 int am_link ;
 struct agp_softc* device_get_softc (int ) ;
 int free (struct agp_memory*,int ) ;
 int vm_object_deallocate (int ) ;

int
agp_generic_free_memory(device_t dev, struct agp_memory *mem)
{
 struct agp_softc *sc = device_get_softc(dev);

 if (mem->am_is_bound)
  return EBUSY;

 sc->as_allocated -= mem->am_size;
 TAILQ_REMOVE(&sc->as_memory, mem, am_link);
 vm_object_deallocate(mem->am_obj);
 free(mem, M_AGP);
 return 0;
}
