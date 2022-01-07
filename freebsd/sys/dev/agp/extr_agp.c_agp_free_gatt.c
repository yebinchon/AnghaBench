
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int32_t ;
struct agp_gatt {int ag_entries; scalar_t__ ag_virtual; } ;


 int M_AGP ;
 int free (struct agp_gatt*,int ) ;
 int kmem_free (int ,int) ;

void
agp_free_gatt(struct agp_gatt *gatt)
{
 kmem_free((vm_offset_t)gatt->ag_virtual, gatt->ag_entries *
     sizeof(u_int32_t));
 free(gatt, M_AGP);
}
