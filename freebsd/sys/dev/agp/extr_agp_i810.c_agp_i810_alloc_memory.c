
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_page_t ;
struct agp_memory {int am_size; int am_type; scalar_t__ am_is_bound; scalar_t__ am_offset; scalar_t__ am_physical; scalar_t__ am_obj; scalar_t__ am_id; } ;
struct TYPE_6__ {int as_allocated; int as_maxmem; int as_memory; int as_nextid; } ;
struct agp_i810_softc {int dcache_size; TYPE_3__ agp; int * argb_cursor; TYPE_2__* match; } ;
typedef int device_t ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {scalar_t__ chiptype; } ;


 int AGP_PAGE_SIZE ;
 scalar_t__ CHIP_I810 ;
 int M_AGP ;
 int M_WAITOK ;
 int OBJT_DEFAULT ;
 int PAGE_SIZE ;
 int TAILQ_INSERT_TAIL (int *,struct agp_memory*,int ) ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_OBJECT_WLOCK (scalar_t__) ;
 int VM_OBJECT_WUNLOCK (scalar_t__) ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 int am_link ;
 int atop (int ) ;
 int * contigmalloc (int,int ,int ,int ,int ,int ,int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 struct agp_memory* malloc (int,int ,int ) ;
 int round_page (int) ;
 scalar_t__ vm_object_allocate (int ,int ) ;
 int vm_page_grab (scalar_t__,int ,int) ;
 scalar_t__ vtophys (int *) ;

__attribute__((used)) static struct agp_memory *
agp_i810_alloc_memory(device_t dev, int type, vm_size_t size)
{
 struct agp_i810_softc *sc;
 struct agp_memory *mem;
 vm_page_t m;

 sc = device_get_softc(dev);

 if ((size & (AGP_PAGE_SIZE - 1)) != 0 ||
     sc->agp.as_allocated + size > sc->agp.as_maxmem)
  return (0);

 if (type == 1) {



  if (sc->match->driver->chiptype != CHIP_I810)
   return (0);
  if (size != sc->dcache_size)
   return (0);
 } else if (type == 2) {







  if (size != AGP_PAGE_SIZE) {
   if (sc->argb_cursor != ((void*)0))
    return (0);


   sc->argb_cursor = contigmalloc(size, M_AGP,
      0, 0, ~0, PAGE_SIZE, 0);
   if (sc->argb_cursor == ((void*)0))
    return (0);
  }
 }

 mem = malloc(sizeof *mem, M_AGP, M_WAITOK);
 mem->am_id = sc->agp.as_nextid++;
 mem->am_size = size;
 mem->am_type = type;
 if (type != 1 && (type != 2 || size == AGP_PAGE_SIZE))
  mem->am_obj = vm_object_allocate(OBJT_DEFAULT,
      atop(round_page(size)));
 else
  mem->am_obj = 0;

 if (type == 2) {
  if (size == AGP_PAGE_SIZE) {




   VM_OBJECT_WLOCK(mem->am_obj);
   m = vm_page_grab(mem->am_obj, 0, VM_ALLOC_NOBUSY |
       VM_ALLOC_WIRED | VM_ALLOC_ZERO);
   VM_OBJECT_WUNLOCK(mem->am_obj);
   mem->am_physical = VM_PAGE_TO_PHYS(m);
  } else {



   mem->am_physical = vtophys(sc->argb_cursor);
  }
 } else
  mem->am_physical = 0;

 mem->am_offset = 0;
 mem->am_is_bound = 0;
 TAILQ_INSERT_TAIL(&sc->agp.as_memory, mem, am_link);
 sc->agp.as_allocated += size;

 return (mem);
}
