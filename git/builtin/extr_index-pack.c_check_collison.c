
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct object_entry {unsigned long size; scalar_t__ type; TYPE_1__ idx; } ;
struct compare_data {int buf; int st; struct object_entry* entry; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
typedef int data ;


 scalar_t__ OBJ_BLOB ;
 int _ (char*) ;
 unsigned long big_file_threshold ;
 int close_istream (int ) ;
 int compare_objects ;
 int die (int ,int ) ;
 int free (int ) ;
 int memset (struct compare_data*,int ,int) ;
 int oid_to_hex (int *) ;
 int open_istream (int *,int*,unsigned long*,int *) ;
 int unpack_data (struct object_entry*,int ,struct compare_data*) ;

__attribute__((used)) static int check_collison(struct object_entry *entry)
{
 struct compare_data data;
 enum object_type type;
 unsigned long size;

 if (entry->size <= big_file_threshold || entry->type != OBJ_BLOB)
  return -1;

 memset(&data, 0, sizeof(data));
 data.entry = entry;
 data.st = open_istream(&entry->idx.oid, &type, &size, ((void*)0));
 if (!data.st)
  return -1;
 if (size != entry->size || type != entry->type)
  die(_("SHA1 COLLISION FOUND WITH %s !"),
      oid_to_hex(&entry->idx.oid));
 unpack_data(entry, compare_objects, &data);
 close_istream(data.st);
 free(data.buf);
 return 0;
}
