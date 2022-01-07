
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;
typedef int * uma_init ;
typedef int * uma_fini ;
typedef int * uma_dtor ;
typedef int * uma_ctor ;
typedef int uint32_t ;
struct uma_zctor_args {char const* name; size_t size; int align; int flags; int * keg; int * fini; int * uminit; int * dtor; int * ctor; } ;
typedef int args ;


 scalar_t__ BOOT_BUCKETS ;
 int KASSERT (int ,char*) ;
 int M_WAITOK ;
 int UMA_ANYDOMAIN ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_NUMA ;
 int UMA_ZONE_ZINIT ;
 scalar_t__ booted ;
 int memset (struct uma_zctor_args*,int ,int) ;
 int powerof2 (int) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int * trash_ctor ;
 int * trash_dtor ;
 int * trash_fini ;
 int * trash_init ;
 int uma_reclaim_lock ;
 int zone_alloc_item (int ,struct uma_zctor_args*,int ,int ) ;
 int zones ;

uma_zone_t
uma_zcreate(const char *name, size_t size, uma_ctor ctor, uma_dtor dtor,
  uma_init uminit, uma_fini fini, int align, uint32_t flags)

{
 struct uma_zctor_args args;
 uma_zone_t res;
 bool locked;

 KASSERT(powerof2(align + 1), ("invalid zone alignment %d for \"%s\"",
     align, name));







 memset(&args, 0, sizeof(args));
 args.name = name;
 args.size = size;
 args.ctor = ctor;
 args.dtor = dtor;
 args.uminit = uminit;
 args.fini = fini;
 args.align = align;
 args.flags = flags;
 args.keg = ((void*)0);

 if (booted < BOOT_BUCKETS) {
  locked = 0;
 } else {
  sx_slock(&uma_reclaim_lock);
  locked = 1;
 }
 res = zone_alloc_item(zones, &args, UMA_ANYDOMAIN, M_WAITOK);
 if (locked)
  sx_sunlock(&uma_reclaim_lock);
 return (res);
}
