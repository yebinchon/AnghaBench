
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int name; } ;
struct g_flashmap_slice {scalar_t__ sl_end; scalar_t__ sl_start; int sl_name; } ;
struct g_flashmap_head {int dummy; } ;
struct flash_slice {scalar_t__ size; scalar_t__ base; int label; } ;
typedef scalar_t__ (* flash_slicer_t ) (int ,int ,struct flash_slice*,int*) ;
typedef int device_t ;


 int FLASH_SLICES_MAX_NUM ;
 int M_FLASHMAP ;
 int M_WAITOK ;
 int M_ZERO ;
 int STAILQ_INSERT_TAIL (struct g_flashmap_head*,struct g_flashmap_slice*,int ) ;
 int free (struct flash_slice*,int ) ;
 void* malloc (int,int ,int) ;
 int sl_link ;

__attribute__((used)) static int
g_flashmap_load(device_t dev, struct g_provider *pp, flash_slicer_t slicer,
    struct g_flashmap_head *head)
{
 struct flash_slice *slices;
 struct g_flashmap_slice *slice;
 int i, nslices = 0;

 slices = malloc(sizeof(struct flash_slice) * FLASH_SLICES_MAX_NUM,
     M_FLASHMAP, M_WAITOK | M_ZERO);
 if (slicer(dev, pp->name, slices, &nslices) == 0) {
  for (i = 0; i < nslices; i++) {
   slice = malloc(sizeof(struct g_flashmap_slice),
       M_FLASHMAP, M_WAITOK);

   slice->sl_name = slices[i].label;
   slice->sl_start = slices[i].base;
   slice->sl_end = slices[i].base + slices[i].size - 1;

   STAILQ_INSERT_TAIL(head, slice, sl_link);
  }
 }

 free(slices, M_FLASHMAP);
 return (nslices);
}
