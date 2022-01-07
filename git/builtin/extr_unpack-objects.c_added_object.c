
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct delta_info {scalar_t__ base_offset; struct delta_info* next; int size; int delta; int nr; int base_oid; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {scalar_t__ offset; int oid; } ;


 struct delta_info* delta_list ;
 int free (struct delta_info*) ;
 TYPE_1__* obj_list ;
 scalar_t__ oideq (int *,int *) ;
 int resolve_delta (int ,int,void*,unsigned long,int ,int ) ;

__attribute__((used)) static void added_object(unsigned nr, enum object_type type,
    void *data, unsigned long size)
{
 struct delta_info **p = &delta_list;
 struct delta_info *info;

 while ((info = *p) != ((void*)0)) {
  if (oideq(&info->base_oid, &obj_list[nr].oid) ||
      info->base_offset == obj_list[nr].offset) {
   *p = info->next;
   p = &delta_list;
   resolve_delta(info->nr, type, data, size,
          info->delta, info->size);
   free(info);
   continue;
  }
  p = &info->next;
 }
}
