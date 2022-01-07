
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_list {int stage; struct merge_list* link; TYPE_2__* blob; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 void* read_object_file (int *,int*,unsigned long*) ;

__attribute__((used)) static void *origin(struct merge_list *entry, unsigned long *size)
{
 enum object_type type;
 while (entry) {
  if (entry->stage == 2)
   return read_object_file(&entry->blob->object.oid,
      &type, size);
  entry = entry->link;
 }
 return ((void*)0);
}
