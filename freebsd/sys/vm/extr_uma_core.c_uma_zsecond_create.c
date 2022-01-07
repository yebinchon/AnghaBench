
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_keg_t ;
typedef int uma_init ;
typedef int uma_fini ;
typedef int uma_dtor ;
typedef int uma_ctor ;
struct uma_zctor_args {char* name; int flags; TYPE_2__* keg; int align; int fini; int uminit; int dtor; int ctor; int size; } ;
typedef int args ;
struct TYPE_7__ {int uk_flags; int uk_align; int uk_size; } ;
struct TYPE_6__ {TYPE_2__* uz_keg; } ;


 scalar_t__ BOOT_BUCKETS ;
 int M_WAITOK ;
 int UMA_ANYDOMAIN ;
 int UMA_ZONE_SECONDARY ;
 scalar_t__ booted ;
 int memset (struct uma_zctor_args*,int ,int) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int uma_reclaim_lock ;
 TYPE_1__* zone_alloc_item (int ,struct uma_zctor_args*,int ,int ) ;
 int zones ;

uma_zone_t
uma_zsecond_create(char *name, uma_ctor ctor, uma_dtor dtor,
      uma_init zinit, uma_fini zfini, uma_zone_t master)
{
 struct uma_zctor_args args;
 uma_keg_t keg;
 uma_zone_t res;
 bool locked;

 keg = master->uz_keg;
 memset(&args, 0, sizeof(args));
 args.name = name;
 args.size = keg->uk_size;
 args.ctor = ctor;
 args.dtor = dtor;
 args.uminit = zinit;
 args.fini = zfini;
 args.align = keg->uk_align;
 args.flags = keg->uk_flags | UMA_ZONE_SECONDARY;
 args.keg = keg;

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
