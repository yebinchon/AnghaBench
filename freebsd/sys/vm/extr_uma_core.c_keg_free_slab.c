
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* uma_slab_t ;
typedef TYPE_2__* uma_keg_t ;
typedef int uint8_t ;
struct TYPE_10__ {int uk_ppera; int uk_rsize; int uk_flags; int (* uk_freef ) (int *,int,int ) ;int uk_slabzone; int uk_size; int (* uk_fini ) (int *,int ) ;int uk_name; } ;
struct TYPE_9__ {int * us_data; int us_flags; } ;


 int CTR4 (int ,char*,int ,TYPE_2__*,TYPE_1__*,int) ;
 int KTR_UMA ;
 int PAGE_SIZE ;
 int SKIP_NONE ;
 int UMA_ZONE_OFFPAGE ;
 int stub1 (int *,int ) ;
 int stub2 (int *,int,int ) ;
 int trash_fini (int *,int ) ;
 int uma_dbg_kskip (TYPE_2__*,int *) ;
 int uma_total_dec (int) ;
 int zone_free_item (int ,TYPE_1__*,int *,int ) ;

__attribute__((used)) static void
keg_free_slab(uma_keg_t keg, uma_slab_t slab, int start)
{
 uint8_t *mem;
 int i;
 uint8_t flags;

 CTR4(KTR_UMA, "keg_free_slab keg %s(%p) slab %p, returning %d bytes",
     keg->uk_name, keg, slab, PAGE_SIZE * keg->uk_ppera);

 mem = slab->us_data;
 flags = slab->us_flags;
 i = start;
 if (keg->uk_fini != ((void*)0)) {
  for (i--; i > -1; i--)
   keg->uk_fini(slab->us_data + (keg->uk_rsize * i),
       keg->uk_size);
 }
 if (keg->uk_flags & UMA_ZONE_OFFPAGE)
  zone_free_item(keg->uk_slabzone, slab, ((void*)0), SKIP_NONE);
 keg->uk_freef(mem, PAGE_SIZE * keg->uk_ppera, flags);
 uma_total_dec(PAGE_SIZE * keg->uk_ppera);
}
