
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
struct agp_softc {int as_maxmem; int as_allocated; int as_memory; int as_nextid; } ;
struct agp_memory {int am_size; scalar_t__ am_is_bound; scalar_t__ am_offset; scalar_t__ am_physical; int am_obj; scalar_t__ am_type; scalar_t__ am_id; } ;
typedef int device_t ;


 int AGP_PAGE_SIZE ;
 int M_AGP ;
 int M_WAITOK ;
 int OBJT_DEFAULT ;
 int TAILQ_INSERT_TAIL (int *,struct agp_memory*,int ) ;
 int am_link ;
 int atop (int ) ;
 struct agp_softc* device_get_softc (int ) ;
 struct agp_memory* malloc (int,int ,int ) ;
 int printf (char*,int) ;
 int round_page (int) ;
 int vm_object_allocate (int ,int ) ;

struct agp_memory *
agp_generic_alloc_memory(device_t dev, int type, vm_size_t size)
{
 struct agp_softc *sc = device_get_softc(dev);
 struct agp_memory *mem;

 if ((size & (AGP_PAGE_SIZE - 1)) != 0)
  return 0;

 if (size > sc->as_maxmem - sc->as_allocated)
  return 0;

 if (type != 0) {
  printf("agp_generic_alloc_memory: unsupported type %d\n",
         type);
  return 0;
 }

 mem = malloc(sizeof *mem, M_AGP, M_WAITOK);
 mem->am_id = sc->as_nextid++;
 mem->am_size = size;
 mem->am_type = 0;
 mem->am_obj = vm_object_allocate(OBJT_DEFAULT, atop(round_page(size)));
 mem->am_physical = 0;
 mem->am_offset = 0;
 mem->am_is_bound = 0;
 TAILQ_INSERT_TAIL(&sc->as_memory, mem, am_link);
 sc->as_allocated += size;

 return mem;
}
