
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* uma_slab_t ;
struct TYPE_4__ {int us_flags; int us_size; scalar_t__ us_data; } ;


 int KASSERT (int,char*) ;
 int SKIP_NONE ;
 int UMA_SLAB_KERNEL ;
 int kmem_free (int ,int ) ;
 int slabzone ;
 int uma_total_dec (int ) ;
 int zone_free_item (int ,TYPE_1__*,int *,int ) ;

void
uma_large_free(uma_slab_t slab)
{

 KASSERT((slab->us_flags & UMA_SLAB_KERNEL) != 0,
     ("uma_large_free:  Memory not allocated with uma_large_malloc."));
 kmem_free((vm_offset_t)slab->us_data, slab->us_size);
 uma_total_dec(slab->us_size);
 zone_free_item(slabzone, slab, ((void*)0), SKIP_NONE);
}
