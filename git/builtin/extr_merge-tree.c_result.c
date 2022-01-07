
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_list {char* path; int stage; struct blob* blob; struct merge_list* link; } ;
struct TYPE_3__ {int oid; } ;
struct blob {TYPE_1__ object; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int index; } ;


 void* merge_blobs (int ,char const*,struct blob*,struct blob*,struct blob*,unsigned long*) ;
 void* read_object_file (int *,int*,unsigned long*) ;
 TYPE_2__* the_repository ;

__attribute__((used)) static void *result(struct merge_list *entry, unsigned long *size)
{
 enum object_type type;
 struct blob *base, *our, *their;
 const char *path = entry->path;

 if (!entry->stage)
  return read_object_file(&entry->blob->object.oid, &type, size);
 base = ((void*)0);
 if (entry->stage == 1) {
  base = entry->blob;
  entry = entry->link;
 }
 our = ((void*)0);
 if (entry && entry->stage == 2) {
  our = entry->blob;
  entry = entry->link;
 }
 their = ((void*)0);
 if (entry)
  their = entry->blob;
 return merge_blobs(the_repository->index, path,
      base, our, their, size);
}
