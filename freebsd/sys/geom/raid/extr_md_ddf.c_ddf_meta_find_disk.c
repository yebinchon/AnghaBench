
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ddf_vol_meta {int ** bvdc; } ;
struct TYPE_4__ {int * Physical_Disk_Sequence; int Primary_Element_Count; } ;
struct TYPE_3__ {int Primary_Element_Count; int Secondary_Element_Count; } ;


 int GET16 (struct ddf_vol_meta*,int ) ;
 scalar_t__ GET32 (struct ddf_vol_meta*,int ) ;
 int GET8 (struct ddf_vol_meta*,int ) ;
 TYPE_2__** bvdc ;
 TYPE_1__* vdc ;

__attribute__((used)) static int
ddf_meta_find_disk(struct ddf_vol_meta *vmeta, uint32_t PD_Reference,
    int *bvdp, int *posp)
{
 int i, bvd, pos;

 i = 0;
 for (bvd = 0; bvd < GET8(vmeta, vdc->Secondary_Element_Count); bvd++) {
  if (vmeta->bvdc[bvd] == ((void*)0)) {
   i += GET16(vmeta, vdc->Primary_Element_Count);
   continue;
  }
  for (pos = 0; pos < GET16(vmeta, bvdc[bvd]->Primary_Element_Count);
      pos++, i++) {
   if (GET32(vmeta, bvdc[bvd]->Physical_Disk_Sequence[pos]) ==
       PD_Reference) {
    if (bvdp != ((void*)0))
     *bvdp = bvd;
    if (posp != ((void*)0))
     *posp = pos;
    return (i);
   }
  }
 }
 return (-1);
}
